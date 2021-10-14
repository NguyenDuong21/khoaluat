$(document).ready(function(){
    
    let thoigian = 1;
    let cauhoanthanh = 0;
    let diem = 240;
    let total_point = setInterval(() => {
        diem -= thoigian;
    }, 1000);
    let status = 0;
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
          toast.addEventListener('mouseenter', Swal.stopTimer)
          toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    });
    
    let curent_id ;
    let curent_row;
    let curent_time;
    let arr_question = 
    [
        {"qestion":"Bỏ ngoài nướng trong, ăn ngoài bỏ trong là gì", "answer":"abcxnz", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "xyudmgho", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "usngke", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "ebce1", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "usnvre", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "abixyz", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "uyrwte", "second":30, "status":0},
        {"qestion":"Bà đó bả chết bả bay lên trời", "answer": "utngre", "second":30, "status":0},
        {"qestion":"Trò chơi này được tạo ra bằng hệ quản trị nội dung nào? ", "answer": "nukeviet", "second":30, "status":0}
    ]
    let changeTime;
    let timeout;
    $(".pivot").on('click', function(){
        if(status == 0){
            if(cauhoanthanh<4){
                Toast.fire({
                    icon: 'warning',
                    title: 'Hãy hoàn thành 4 câu hàng ngang'
                });
            } else {
                $("#cauhoi").html("Trò chơi này được tạo ra bằng hệ quản trị nội dung nào? ");
                $("#exampleModal").modal("show");
                let id_cauhoi = 9;
                curent_time = arr_question[id_cauhoi - 1]['second'];
                $("#time").html(curent_time);
                $("#time").html(curent_time--);
                curent_id = id_cauhoi;
                let cauhoi = arr_question[id_cauhoi - 1]['qestion'];
                $("#cauhoi").html(cauhoi);
                $("#exampleModal").modal("show");
                let time_rest = arr_question[id_cauhoi - 1]['second'];
                changeTime = setInterval(() => {
                    handelChangeSecond();
                }, 1000);
                timeout = setTimeout(() => { 
                    clearInterval(changeTime);
                    end_game();
                }, time_rest * 1000);
            }
        } else {
            Toast.fire({
                icon: 'warning',
                title: 'Trò chơi đã kết thúc'
            });
        }
        
    });
    $('.letter:not(.pivot)').on('click', function (){
        if(status == 0)
        {
            let row_parent = $(this).parents('div.word');
            let id_cauhoi = row_parent.data('question');
            if(arr_question[id_cauhoi - 1]["status"] == 0)
            {
                curent_row = row_parent;
                curent_time = arr_question[id_cauhoi - 1]['second'];
                $("#time").html(curent_time);
                $("#time").html(curent_time--);
                curent_id = id_cauhoi;
                let cauhoi = arr_question[id_cauhoi - 1]['qestion'];
                $("#cauhoi").html(cauhoi);
                $("#exampleModal").modal("show");
                let time_rest = arr_question[id_cauhoi - 1]['second'];
                changeTime = setInterval(() => {
                    handelChangeSecond();
                }, 1000);
                timeout = setTimeout(() => { 
                    clearInterval(changeTime);
                    answer_question(curent_row);
                }, time_rest * 1000);
            } else {
                Toast.fire({
                    icon: 'error',
                    title: 'Câu hỏi này đã hoàn thành'
                });
            }
        } else {
            Toast.fire({
                icon: 'warning',
                title: 'Trò chơi đã kết thúc'
            });
        }
        
        
    });
    $("#answer").on("click", function(){
        let result = arr_question[curent_id - 1]['answer'];
        if($("#input_answer").val() == result)
        {
            Toast.fire({
                icon: 'success',
                title: 'Chính xác'
            });
            if(curent_id == 9)
            {
                end_game();
            } else {
                cauhoanthanh +=1;
                answer_question(curent_row);
            }
            
        } else {
            Toast.fire({
                icon: 'error',
                title: 'Không chính xác'
            });
        }
    })
    $('#exampleModal').on('hidden.bs.modal', function () {
        clearInterval(changeTime);
        clearTimeout(timeout);
    });
    function end_game()
    {
        
          send_result_to_server();
          status = 1;
          arr_question[curent_id -1]["status"] = 1;
            $("#exampleModal").modal("hide");
            clearInterval(total_point);
            $(".word").each(function(index){
                $(this).find("span").each(function(index2){
                    $(this).html(arr_question[index]["answer"][index2]);
                })
            });
            localStorage.diem = diem;
            Swal.fire({
                icon: 'success',
                title: 'Trò chơi kết thúc',
                text: 'Điểm số của bạn là'+ diem,
                footer: ''
            })
            .then(function() {
                window.location = "index.php?language=vi&nv=music&op=result_page";
            });
    }
    function answer_question(curent_row)
    {
        curent_row.find("span").each(function(index){
            $(this).html(arr_question[curent_id -1]["answer"][index]);
        });
        arr_question[curent_id -1]["status"] = 1;
        $("#exampleModal").modal("hide");
    }
    function handelChangeSecond()
    {
        let curent = curent_time--;
        $("#time").html(curent);
        arr_question[curent_id - 1]['second'] = curent;
    }
    function send_result_to_server()
    {
        $.ajax({
            url:window.location.href,
            method:"post",
            data:{"diem":diem}
        }).done(function(res){
            console.log(res);
        })
    }
});