const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],
                "menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],
                    "menu":"竞拍类型","menuJump":"列表","tableName":"shangpinleixing"}],"menu":"竞拍类型管理"},
                {"child":[{"buttons":["新增","查看","修改","删除"],"menu":"拍卖球星卡","menuJump":"列表","tableName":"paimaishangpin"}],
                    "menu":"拍卖球星卡管理"},{"child":[{"buttons":["查看","修改","删除","审核"],
                        "menu":"历史竞拍","menuJump":"列表","tableName":"lishijingpai"}],"menu":"历史竞拍管理"},
                {"child":[{"buttons":["新增","查看","修改","删除"],"menu":"竞拍订单","menuJump":"列表","tableName":"jingpaidingdan"}],
                    "menu":"竞拍订单管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"评论管理","tableName":"messages"}],
                    "menu":"评论管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},
                        {"buttons":["新增","查看","修改","删除"],"menu":"竞拍公告","tableName":"news"}],"menu":"系统管理"}],
            "frontMenu":[{"child":[{"buttons":["查看","竞拍"],"menu":"拍卖商品列表","menuJump":"列表","tableName":"paimaishangpin"}],
   "menu":"拍卖商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},
            {"backMenu":[{"child":[{"buttons":["查看"],"menu":"历史竞拍","menuJump":"列表","tableName":"lishijingpai"}],"menu":"历史竞拍管理"},
                    {"child":[{"buttons":["查看","支付"],"menu":"竞拍订单","menuJump":"列表","tableName":"jingpaidingdan"}],"menu":"竞拍订单管理"},
                    {"child":[{"buttons":["查看","删除"],"menu":"评论管理","tableName":"messages"}],"menu":"评论管理"}],"frontMenu":
                    [{"child":[{"buttons":["查看","竞拍"],"menu":"拍卖商品列表","menuJump":"列表","tableName":"paimaishangpin"}],
                        "menu":"拍卖商品模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]
    }
}
export default menu;
