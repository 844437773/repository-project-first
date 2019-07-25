# repository-project-first
打印小票

引入JS文件
let LODOP = getLodop();
let htmlStr = document.getElementById("form1").innerHTML    //直接打印html里的内容
LODOP.ADD_PRINT_HTM(0, 10, '100%', '100%',htmlStr);

//预览和打印二选一
LODOP.PREVIEW(); //预览
LODOP.PRINT(); //打印
