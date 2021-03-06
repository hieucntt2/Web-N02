$(document).ready(function () {
    $('.add__product button[type="button"]').click(function () {
        var data = {
            MaSP: $(".form-sanpham input[name=MaSP]").val(),
            strUrl: $(".form-sanpham input[name=Url]").val(),
            Sl: $(".form-sanpham input[name=SL]").val(),
        }
        $.ajax({
            url: "/GioHang/ThemGioHang",
            type: "POST",
            data: data,
            dataType: "json",
            success: function (mess) {
                if (mess == "200") {
                    alert("Thêm vào giỏ hàng thành công !");
                    location.reload();
                }
            },
            error: function () {
                alert("Thêm vào giỏ hàng khong thành công !");
            }
        });
    })

    //#region SỰ KIỆN CẬP NHẬT GIỎ HÀNG
    $('.update_giohang').click(function () {
        var listMaSP = [];
        var listSL = [];
        $(".tr-sanpham").each(function () {

            listMaSP.push($(this).attr("id-sp"));
            listSL.push($(this).find("input[Name=SoLuong]").val());
        });

        $.ajax({
            url: "/GioHang/CapNhatGioHang",
            type: "POST",
            data: {
                listMaSP: listMaSP,
                listSL: listSL,
            },
            dataType: "json",
            success: function (mess) {
                if (mess == "200") {
                    alert("Cập nhật giỏ hàng thành công !");
                    window.location.href = "/GioHang/GioHang";
                }
            },
            error: function () {
                alert("Cập nhật giỏ hàng khong thành công !");
            }
        });
    });
    //#endregion

    //active ở menu
    $('header nav  ul li').click(function () {
        $('header ul li').removeClass('active');
        $(this).addClass('active')
    })
    $('.mb_menu  ul li').click(function () {
        $('.mb_menu ul li').removeClass('active');
        $(this).addClass('active')
    })

    //modal search
    $('.icon-search').click(function () {
        $('.modalShow').show();
        $('.modal__search').show();
        $('.modal__login').hide();
        $('.modal__register').hide();
    })
    $('.icon-login').click(function () {
        $('.modalShow').show();
        $('.modal__search').hide();
        $('.modal__login').show();
        $('.modal__register').hide();
    })
    $('.close-search').click(function () {
        $('.modalShow').hide();
    })
    $('.modalShow .overlay').click(function () {
        $('.modalShow').hide();
    })
    $('.btnregis').click(function () {
        $('.modal__search').hide();
        $('.modal__login').hide();
        $('.modal__register').show();
    })
    $('.btnlogin').click(function () {
        $('.modal__search').hide();
        $('.modal__login').show();
        $('.modal__register').hide();
    })
    $('.classify li').click(function () {
        $('.classify li').removeClass('active');
        $(this).addClass('active');
        console.log(1);
    })
    $('.pagination ul .page').click(function () {
        $('.pagination ul .page').removeClass('active');
        $(this).addClass('active')
    })
    $('.mb_menu .overlay').click(function () {
        $('.mb_menu').hide();
    })
    $('.mb_menu i').click(function () {
        $('.mb_menu').hide();
    })
    $('.mb-menu .icon-menu').click(function () {
        $('.mb_menu').show();
    })
    $('.menu1').click(function () {
        $('.mb-menu2').toggle();
    })
    $('.product__promotion').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        autoplay: true,
        autoplaySpeed: 2000,
        responsive: [
            {
                breakpoint: 1400,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 575.98,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }]
    });

    $('.product__promotions').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        autoplay: true,
        autoplaySpeed: 2000,
        responsive: [
            {
                breakpoint: 1400,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 575.98,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }]
    });
    $('.brand').slick({
        infinite: true,
        slidesToShow: 6,
        slidesToScroll: 2,
        autoplay: true,
        autoplaySpeed: 1000,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            }]
    });
    //$('.modal__register button').click(function () {
    //    $('.register__input input').val(" ");
    //})

    const toTop = document.querySelector("#ScrollTop");
    window.addEventListener("scroll", () => {
        if (window.pageYOffset > 200) {
            toTop.classList.add("active");
        } else {
            toTop.classList.remove("active");
        }
    })
    $("#ScrollTop").click(function () {
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });

    window.addEventListener("scroll", () => {
        if (window.pageYOffset > 200) {
            $('header').addClass('header_scroll')
        } else {
            $('header').removeClass('header_scroll')
        }
    })

    $('.close').click(function () {
        let parent = $(this).parent();
        parent.remove();
    })
    $('.tru').click(function () {
        let res = $(this).siblings('.input').val();
        console.log(res);
        if (res > 1) {
            res = parseInt(res) - 1;
        };
        $(this).siblings('.input').val(res);
    });
    $('.cong').click(function () {
        let res = $(this).siblings('.input').val();
        res = parseInt(res) + 1;
        $(this).siblings('.input').val(res);
    });

    //serach
    function setList(list) {
        $('.list-product').html('');
        for (let i = 0; i < list.length; i++) {
            $('.list-product').append(list[i]);
        }
    }

    $('.price li').click(function () {
        let val = $(this).attr('value');
        //Cần lấy ra masp hiện tại đang được chọn
        let masp = $('.store__left ul li a.active').attr("id-masp");
        //Trường hợp lấy ra tất cả mã sp
        if (masp == undefined) {
            masp = "all";
        }
        //Điều hướng
        window.location.href = "/Products/ChiTietLoaiSP?MaLoai=" + masp + "&value=" + val;

        /* let minPrice = 0;
         let maxPrice = 0;
         if (val == 0) {
             minPrice = 0;
             maxPrice = 10000000000000;
         }
         if (val == 1) {
             minPrice = 0;
             maxPrice = 100000;
         }
         if (val == 2) {
             minPrice = 100000;
             maxPrice = 500000;
         }
         if (val == 3) {
             minPrice = 500000;
             maxPrice = 0;
         }*/

    })
    $('.btnlogin').click(function () {
        let tk = $(".modal__login input[Name=txtTaiKhoan]").val();
        let mk = $(".modal__login input[Name=txtMatKhau]").val();
        if (tk == "" || mk == "") {
            alert("Bạn chưa nhập đủ thông tin");
        }
        else {
            $.ajax({
                url: "/Login/DN",
                type: "POST",
                data: {
                    taikhoan: tk,
                    matkhau: mk,
                },
                dataType: "JSON",
                success: function (mess) {
                    if (mess == "200") {
                        alert("Đăng nhập thành công");
                        location.reload();
                    }
                    else {
                        alert("Đăng nhập thất bại");
                    }
                },
                error: function () {
                    alert("Đăng nhập thất bại");
                }
            });
        }
    })
    $('.btnregiss').click(function () {
        let input = $(".modal__login + form").serializeObject();
        if (input.HoTen == "" || input.Email == "") {
            alert("Thông tin nhập chưa đủ");
        }
        else {

            $.ajax({
                url: "/Login/DangKy",
                type: "POST",
                data: {
                    kh: input,
                },
                dataType: "JSON",
                success: function (mess) {
                    if (mess == "200") {
                        alert("Đăng ký thành công");
                        location.reload();
                    }
                    else {
                        alert("Đăng ký thất bại");
                    }
                },
                error: function () {
                    alert("Đăng ký thất bại");
                }
            });
        }
    })
    
    $('.store__left ul li').click(function () {
        console.log(1);
        $('.store__left ul li a').removeClass('active')
        $(this).addClass('active')
    })
});

$.fn.serializeObject = function () {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function () {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

$(document).ready(function () {
    var indexCurrent = $('.img__slide img.active').attr('index');

    $('.img__slide img').click(function () {
        $('.img__slide img').removeClass('active');
        $(this).addClass('active');
        const src = $(this).attr('src');
        $('.main__img img').attr('src', src);
        indexCurrent = $(this).attr('index');
    });
    function activeImages() {
        $('.img__slide img').each(function () {
            var index = $(this).attr('index');
            if (index == indexCurrent) {
                var src = $(this).attr('src');
                $('.main__img img').attr('src', src);
                $('.img__slide img').removeClass('active');
                $(this).addClass('active');
            }
        })
    }
    $('.left').click(function () {
        indexCurrent--;
        activeImages();
        if (indexCurrent < 1) {
            indexCurrent = 4;
            activeImages();
        }
    })
    $('.right').click(function () {
        indexCurrent++;
        activeImages();
        if (indexCurrent > 4) {
            indexCurrent = 1;
            activeImages();
        }
    });
    $('.prev').click(function (e) {
        //e.preventDefault();
        $('.product__promotions').slick('slickPrev');
    });

    $('.next').click(function (e) {
        //e.preventDefault();
        $('.product__promotions').slick('slickNext');
    });

})