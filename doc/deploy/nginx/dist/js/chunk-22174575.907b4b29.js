(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-22174575","chunk-707131f5"],{"0599":function(e,t,s){e.exports=s.p+"assets/online.fb93d2e7.svg"},"076d":function(e,t,s){e.exports=s.p+"assets/timeRange.4a869bcb.svg"},"0e68":function(e,t,s){e.exports=s.p+"assets/number.7e0faaa5.svg"},"0ff9":function(e,t,s){e.exports=s.p+"assets/tree.7481e9d2.svg"},"100a":function(e,t,s){e.exports=s.p+"assets/code.ec69c047.svg"},"14f6":function(e,t,s){e.exports=s.p+"assets/github.a1e0a262.svg"},"1838a":function(e,t,s){e.exports=s.p+"assets/dateRange.21c0ab78.svg"},"1c20":function(e,t,s){e.exports=s.p+"assets/swagger.78429129.svg"},"1e11":function(e,t,s){e.exports=s.p+"assets/logininfor.182c8103.svg"},"221d":function(e,t,s){e.exports=s.p+"assets/switch.67ff45e5.svg"},2477:function(e,t,s){e.exports=s.p+"assets/monitor.7eeb6217.svg"},2922:function(e,t,s){e.exports=s.p+"assets/redis.bfe086f4.svg"},"2f02":function(e,t,s){e.exports=s.p+"assets/chart.a8b3ec61.svg"},"376a":function(e,t,s){e.exports=s.p+"assets/cascader.af4b06f5.svg"},4247:function(e,t,s){e.exports=s.p+"assets/clipboard.d5d113f3.svg"},"4b63":function(e,t,s){e.exports=s.p+"assets/rate.d8284c44.svg"},"4d15":function(e,t,s){e.exports=s.p+"assets/druid.09b411e5.svg"},"51c3":function(e,t,s){e.exports=s.p+"assets/component.a69885f8.svg"},"52b2":function(e,t,s){e.exports=s.p+"assets/bug.dffdc045.svg"},5730:function(e,t,s){e.exports=s.p+"assets/pdf.7e6ae0e3.svg"},"5a5b":function(e,t,s){"use strict";s.r(t);var n=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("page-header-wrapper",[s("a-card",{attrs:{bordered:!1}},[s("div",{staticClass:"table-page-search-wrapper"},[s("a-form",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:list"],expression:"['menus:list']"}],attrs:{layout:"inline"}},[s("a-row",{attrs:{gutter:48}},[s("a-col",{attrs:{md:8,sm:24}},[s("a-form-item",{attrs:{label:"菜单名称"}},[s("a-input",{attrs:{placeholder:"请输入","allow-clear":""},model:{value:e.queryParam.name,callback:function(t){e.$set(e.queryParam,"name",t)},expression:"queryParam.name"}})],1)],1),s("a-col",{attrs:{md:8,sm:24}},[s("span",{staticClass:"table-page-search-submitButtons"},[s("a-button",{attrs:{type:"primary"},on:{click:e.handleQuery}},[s("a-icon",{attrs:{type:"search"}}),e._v("查询")],1),s("a-button",{staticStyle:{"margin-left":"8px"},on:{click:e.resetQuery}},[s("a-icon",{attrs:{type:"redo"}}),e._v("重置")],1)],1)])],1)],1)],1),s("div",{staticClass:"table-operations"},[s("a-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:insert"],expression:"['menus:insert']"}],attrs:{type:"primary"},on:{click:function(t){return e.$refs.createForm.handleAdd()}}},[s("a-icon",{attrs:{type:"plus"}}),e._v("新增 ")],1)],1),s("create-form",{ref:"createForm",attrs:{menuOptions:e.menuOptions},on:{ok:e.getList,"select-tree":e.getTreeSelect}}),s("a-table",{attrs:{loading:e.loading,size:e.tableSize,rowKey:"id",columns:e.columns,"data-source":e.list,pagination:!1,bordered:e.tableBordered},scopedSlots:e._u([{key:"icon",fn:function(t){return s("span",{},[e.allIcon[t+"Icon"]?s("a-icon",{attrs:{component:e.allIcon[t+"Icon"]}}):e._e(),e.allIcon[t+"Icon"]?e._e():s("a-icon",{attrs:{type:t}})],1)}},{key:"type",fn:function(t,n){return s("span",{},[e._v(" "+e._s(e.typeFormat(n))+" ")])}},{key:"visible",fn:function(t,n){return s("span",{},[e._v(" "+e._s(e.visibleFormat(n))+" ")])}},{key:"operation",fn:function(t,n){return s("span",{},[s("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:update"],expression:"['menus:update']"}],on:{click:function(t){return e.$refs.createForm.handleUpdate(n)}}},[s("a-icon",{attrs:{type:"edit"}}),e._v("修改 ")],1),s("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:insert"],expression:"['menus:insert']"}],attrs:{type:"vertical"}}),s("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:insert"],expression:"['menus:insert']"}],on:{click:function(t){return e.$refs.createForm.handleAdd(n)}}},[s("a-icon",{attrs:{type:"plus"}}),e._v("新增 ")],1),s("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:delete"],expression:"['menus:delete']"}],attrs:{type:"vertical"}}),s("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["menus:delete"],expression:"['menus:delete']"}],on:{click:function(t){return e.handleDelete(n)}}},[s("a-icon",{attrs:{type:"delete"}}),e._v("删除 ")],1)],1)}}])})],1)],1)},o=[],a=s("7b86"),i=s("5c61"),r=s("04b3"),c=s("435a"),l={name:"Menus",components:{CreateForm:i["default"]},mixins:[c["a"]],data:function(){return{allIcon:r["a"],iconVisible:!1,list:[],menuOptions:[],loading:!1,queryParam:{name:""},columns:[{title:"菜单名称",dataIndex:"name",ellipsis:!0,width:"20%"},{title:"菜单图标",dataIndex:"icon",scopedSlots:{customRender:"icon"},align:"center",width:"10%"},{title:"菜单顺序",dataIndex:"sort",align:"center",width:"10%"},{title:"菜单类型",dataIndex:"type",scopedSlots:{customRender:"type"},align:"center",width:"10%"},{title:"权限标识",dataIndex:"permission",ellipsis:!0,align:"center",width:"20%"},{title:"菜单路径",dataIndex:"url",ellipsis:!0,align:"center",width:"20%"},{title:"是否可见",dataIndex:"visible",ellipsis:!0,align:"center",scopedSlots:{customRender:"visible"},width:"10%"},{title:"操作",dataIndex:"operation",scopedSlots:{customRender:"operation"},align:"center",width:"20%"}]}},filters:{},created:function(){this.getList()},computed:{},watch:{},methods:{getList:function(){var e=this;this.loading=!0,Object(a["d"])(this.queryParam).then((function(t){e.list=e.handleTree(t.data,"id"),e.loading=!1}))},typeFormat:function(e){return 0===e.type?"菜单":"按钮"},visibleFormat:function(e){return 0===e.visible?"显示":"隐藏"},handleQuery:function(){this.getList()},resetQuery:function(){this.queryParam={name:""},this.handleQuery()},getTreeSelect:function(){var e=this;this.menuOptions=[],Object(a["e"])().then((function(t){e.menuOptions.push(t.data)}))},handleDelete:function(e){var t=this,s=e.id;this.$confirm({title:"确认删除所选中数据?",content:"当前选中编号为"+s+"的数据",onOk:function(){return Object(a["a"])(s).then((function(){t.getList(),t.$message.success("删除成功",3)}))},onCancel:function(){}})}}},u=l,d=s("2877"),p=Object(d["a"])(u,n,o,!1,null,null,null);t["default"]=p.exports},"5a96":function(e,t,s){e.exports=s.p+"assets/upload.84d5b598.svg"},"5b02":function(e,t,s){e.exports=s.p+"assets/checkbox.33950d05.svg"},"5bd3":function(e,t,s){"use strict";s.d(t,"a",(function(){return o}));var n=s("b775");function o(){return Object(n["b"])({url:"/admin/v1/tokens",method:"get"})}},"5c61":function(e,t,s){"use strict";s.r(t);var n=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("a-drawer",{attrs:{width:"35%","label-col":4,"wrapper-col":14,visible:e.open},on:{close:e.onClose}},[s("a-divider",{attrs:{orientation:"left"}},[s("b",[e._v(e._s(e.formTitle))])]),s("a-form-model",{ref:"form",attrs:{model:e.form,rules:e.rules}},[s("a-form-model-item",{attrs:{label:"上级菜单",prop:"pid"}},[s("a-tree-select",{staticStyle:{width:"100%"},attrs:{"dropdown-style":{maxHeight:"400px",overflow:"auto"},"tree-data":e.menuOptions,placeholder:"请选择",replaceFields:{children:"children",title:"name",key:"id",value:"id"},"tree-default-expand-all":""},model:{value:e.form.pid,callback:function(t){e.$set(e.form,"pid",t)},expression:"form.pid"}})],1),s("a-form-model-item",{attrs:{label:"菜单类型",prop:"type"}},[s("a-radio-group",{attrs:{"button-style":"solid"},model:{value:e.form.type,callback:function(t){e.$set(e.form,"type",t)},expression:"form.type"}},[s("a-radio-button",{attrs:{value:"0"}},[e._v("菜单")]),s("a-radio-button",{attrs:{value:"1"}},[e._v("按钮")])],1)],1),s("a-form-model-item",{attrs:{label:"菜单图标",prop:"icon"}},[s("a-space",{attrs:{size:"large"}},[e.form.icon&&e.allIcon[e.form.icon+"Icon"]?s("a-icon",{attrs:{component:e.allIcon[e.form.icon+"Icon"]}}):e._e(),e.form.icon&&!e.allIcon[e.form.icon+"Icon"]?s("a-icon",{attrs:{type:e.form.icon}}):e._e(),s("a-button",{attrs:{type:"dashed"},on:{click:e.selectIcon}},[e._v(" 选择图标 ")]),e.iconVisible?s("a",{staticStyle:{"margin-left":"8px"},on:{click:e.cancelSelectIcon}},[e._v(" 收起 "),s("a-icon",{attrs:{type:"up"}})],1):e._e()],1)],1),e.iconVisible?s("a-card",{attrs:{"body-style":{padding:"10px 20px"},bordered:!1}},[s("icon-selector",{attrs:{svgIcons:e.iconList,allIcon:e.allIcon},on:{change:e.handleIconChange},model:{value:e.form.icon,callback:function(t){e.$set(e.form,"icon",t)},expression:"form.icon"}})],1):e._e(),s("a-form-model-item",{attrs:{label:"菜单名称",prop:"name"}},[s("a-input",{attrs:{placeholder:"请输入"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1),s("a-form-model-item",{attrs:{label:"菜单排序",prop:"sort"}},[s("a-input-number",{staticStyle:{width:"100%"},attrs:{min:1,max:9999},model:{value:e.form.sort,callback:function(t){e.$set(e.form,"sort",t)},expression:"form.sort"}})],1),s("a-form-model-item",{attrs:{prop:"url"}},[s("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 菜单路径 "),s("a-tooltip",[s("template",{slot:"title"},[e._v(" 访问的组件路径，如：`system/user/index`，默认在`views`目录下 ")]),s("a-icon",{attrs:{type:"question-circle-o"}})],2)],1),s("a-input",{attrs:{placeholder:"请输入"},model:{value:e.form.url,callback:function(t){e.$set(e.form,"url",t)},expression:"form.url"}})],1),s("a-form-model-item",{attrs:{prop:"permission"}},[s("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 权限标识 "),s("a-tooltip",[s("template",{slot:"title"},[e._v(" 控制器中定义的权限字符，如 sys:user:query ")]),s("a-icon",{attrs:{type:"question-circle-o"}})],2)],1),s("a-input",{attrs:{placeholder:"请输入",maxLength:100},model:{value:e.form.permission,callback:function(t){e.$set(e.form,"permission",t)},expression:"form.permission"}})],1),"0"===e.form.type?s("a-form-model-item",{attrs:{prop:"visible"}},[s("span",{attrs:{slot:"label"},slot:"label"},[e._v(" 状态 "),s("a-tooltip",[s("template",{slot:"title"},[e._v(" 选择隐藏则路由将不会出现在侧边栏，也不能被访问 ")]),s("a-icon",{attrs:{type:"question-circle-o"}})],2)],1),s("a-radio-group",{attrs:{"button-style":"solid"},model:{value:e.form.visible,callback:function(t){e.$set(e.form,"visible",t)},expression:"form.visible"}},[s("a-radio-button",{attrs:{value:"0",index:"0"}},[e._v("显示")]),s("a-radio-button",{attrs:{value:"1",index:"1"}},[e._v("隐藏")])],1)],1):e._e(),s("div",{staticClass:"bottom-control"},[s("a-space",[s("a-button",{attrs:{type:"primary",loading:e.submitLoading},on:{click:e.submitForm}},[e._v(" 保存 ")]),s("a-button",{attrs:{type:"dashed"},on:{click:e.cancel}},[e._v(" 取消 ")])],1)],1)],1)],1)},o=[],a=(s("d3b7"),s("7b86")),i=s("04b3"),r=(s("ddb0"),s("d81d"),s("ac1f"),s("466d"),s("a244")),c=function(e){return e.keys()},l=/\.\/(.*)\.svg/,u=c(r).map((function(e){return e.match(l)[1]})),d=u,p=s("13bb"),f=s("5bd3"),m={name:"CreateForm",props:{menuOptions:{type:Array,required:!0}},components:{IconSelector:p["a"]},data:function(){return{accessToken:"",allIcon:i["a"],iconVisible:!1,iconList:d,submitLoading:!1,formTitle:"",form:{id:"",pid:0,name:"",icon:"",type:"0",sort:1,visible:"0",url:"",permission:""},open:!1,rules:{name:[{required:!0,message:"菜单名称不能为空",trigger:"blur"}],sort:[{required:!0,message:"菜单顺序不能为空",trigger:"blur"}],url:[{required:!0,message:"菜单路径不能为空",trigger:"blur"}],permission:[{required:!0,message:"权限标识不能为空",trigger:"blur"}],visible:[{required:!0,message:"状态不能为空",trigger:"blur"}],icon:[{required:!0,message:"请选择图标",trigger:"blur"}]}}},filters:{},created:function(){},computed:{},watch:{},methods:{token:function(){var e=this;Object(f["a"])().then((function(t){e.accessToken=t.data.token}))},onClose:function(){this.open=!1,this.iconVisible=!1},cancel:function(){this.open=!1,this.iconVisible=!1,this.reset()},reset:function(){this.form={id:"",pid:0,name:"",icon:"",type:"0",sort:1,url:"",visible:"0",permission:""}},handleAdd:function(e){this.reset(),this.token(),this.$emit("select-tree"),null!=e&&e.id?this.form.pid=e.id:this.form.pid=0,this.open=!0,this.formTitle="菜单新增"},handleUpdate:function(e){var t=this;this.reset(),this.$emit("select-tree"),Object(a["b"])(e.id).then((function(e){t.form=e.data,t.form.type=""+e.data.type,t.form.visible=""+e.data.visible,t.open=!0,t.formTitle="菜单修改"}))},submitForm:function(){var e=this;this.$refs.form.validate((function(t){if(!t)return!1;if(e.submitLoading=!0,""!==e.form.id){var s={menuCO:e.form};Object(a["h"])(s).then((function(){e.$message.success("修改成功",3),e.open=!1,e.iconVisible=!1,e.$emit("ok")})).finally((function(){e.submitLoading=!1}))}else{var n={menuCO:e.form};Object(a["c"])(n,e.accessToken).then((function(){e.$message.success("新增成功",3),e.open=!1,e.iconVisible=!1,e.$emit("ok")})).catch((function(){e.token()})).finally((function(){e.submitLoading=!1}))}}))},handleIconChange:function(e){this.iconVisible=!1,this.form.icon=e},selectIcon:function(){this.iconVisible=!this.iconVisible},cancelSelectIcon:function(){this.iconVisible=!1}}},v=m,b=s("2877"),g=Object(b["a"])(v,n,o,!1,null,null,null);t["default"]=g.exports},"612e":function(e,t,s){e.exports=s.p+"assets/message.d5dc7207.svg"},"6aed":function(e,t,s){e.exports=s.p+"assets/user.f5fdab9a.svg"},"6d35":function(e,t,s){e.exports=s.p+"assets/eyeOpen.26bf09f4.svg"},"70f5":function(e,t,s){e.exports=s.p+"assets/date.43878da9.svg"},"72ea":function(e,t,s){e.exports=s.p+"assets/input.fd627960.svg"},"79aa":function(e,t,s){e.exports=s.p+"assets/time.809df2f6.svg"},"79b2":function(e,t,s){e.exports=s.p+"assets/post.4f1521cb.svg"},"79de":function(e,t,s){e.exports=s.p+"assets/system.5ba6d8fb.svg"},"7b86":function(e,t,s){"use strict";s.d(t,"d",(function(){return o})),s.d(t,"b",(function(){return a})),s.d(t,"c",(function(){return i})),s.d(t,"h",(function(){return r})),s.d(t,"a",(function(){return c})),s.d(t,"e",(function(){return l})),s.d(t,"f",(function(){return u})),s.d(t,"g",(function(){return d}));var n=s("b775");function o(e){return Object(n["b"])({url:"/admin/v1/menus/list",method:"post",data:e})}function a(e){return Object(n["b"])({url:"/admin/v1/menus/"+e,method:"get"})}function i(e,t){return Object(n["b"])({url:"/admin/v1/menus",method:"post",data:e,headers:{"Content-Type":"application/json;charset=UTF-8","request-id":t}})}function r(e){return Object(n["b"])({url:"/admin/v1/menus",method:"put",data:e})}function c(e){return Object(n["b"])({url:"/admin/v1/menus/"+e,method:"delete"})}function l(){return Object(n["b"])({url:"/admin/v1/menus/tree",method:"get"})}function u(e){return Object(n["b"])({url:"/admin/v1/menus/"+e+"/ids",method:"get"})}function d(){return Object(n["b"])({url:"/admin/v1/menus/tenant-tree",method:"get"})}},"7c09":function(e,t,s){e.exports=s.p+"assets/color.d6e1d0d9.svg"},8430:function(e,t,s){e.exports=s.p+"assets/log.7798bf59.svg"},"88c6":function(e,t,s){e.exports=s.p+"assets/drag.c17d3af2.svg"},"90f6":function(e,t,s){e.exports=s.p+"assets/server.f13cf274.svg"},"978d":function(e,t,s){e.exports=s.p+"assets/row.88cc2b15.svg"},9872:function(e,t,s){e.exports=s.p+"assets/question.6dd93e77.svg"},9878:function(e,t,s){e.exports=s.p+"assets/select.be2885c0.svg"},"992b":function(e,t,s){e.exports=s.p+"assets/peoples.98db8323.svg"},a244:function(e,t,s){var n={"./bug.svg":"52b2","./build.svg":"ed4c","./button.svg":"d1a5","./bxAnalyse.svg":"c202","./cascader.svg":"376a","./chart.svg":"2f02","./checkbox.svg":"5b02","./clipboard.svg":"4247","./code.svg":"100a","./color.svg":"7c09","./component.svg":"51c3","./dashboard.svg":"ecef","./date.svg":"70f5","./dateRange.svg":"1838a","./dict.svg":"d00d","./documentation.svg":"b605","./download.svg":"f28e","./drag.svg":"88c6","./druid.svg":"4d15","./edit.svg":"daf0","./eyeOpen.svg":"6d35","./github.svg":"14f6","./guide.svg":"c228","./input.svg":"72ea","./job.svg":"f1c4","./log.svg":"8430","./logininfor.svg":"1e11","./message.svg":"612e","./monitor.svg":"2477","./number.svg":"0e68","./online.svg":"0599","./password.svg":"b009","./pdf.svg":"5730","./peoples.svg":"992b","./phone.svg":"c3bb","./post.svg":"79b2","./question.svg":"9872","./radio.svg":"c473","./rate.svg":"4b63","./redis.svg":"2922","./row.svg":"978d","./select.svg":"9878","./server.svg":"90f6","./swagger.svg":"1c20","./switch.svg":"221d","./system.svg":"79de","./textarea.svg":"e0ee","./time.svg":"79aa","./timeRange.svg":"076d","./tool.svg":"b323","./tree.svg":"0ff9","./treeTable.svg":"fb96","./upload.svg":"5a96","./user.svg":"6aed","./validCode.svg":"d2c9"};function o(e){var t=a(e);return s(t)}function a(e){if(!s.o(n,e)){var t=new Error("Cannot find module '"+e+"'");throw t.code="MODULE_NOT_FOUND",t}return n[e]}o.keys=function(){return Object.keys(n)},o.resolve=a,e.exports=o,o.id="a244"},b009:function(e,t,s){e.exports=s.p+"assets/password.9173da92.svg"},b323:function(e,t,s){e.exports=s.p+"assets/tool.c8148520.svg"},b605:function(e,t,s){e.exports=s.p+"assets/documentation.879aee2c.svg"},c202:function(e,t,s){e.exports=s.p+"assets/bxAnalyse.973331c7.svg"},c228:function(e,t,s){e.exports=s.p+"assets/guide.e7db8809.svg"},c3bb:function(e,t,s){e.exports=s.p+"assets/phone.4ab5e783.svg"},c473:function(e,t,s){e.exports=s.p+"assets/radio.1db061a7.svg"},d00d:function(e,t,s){e.exports=s.p+"assets/dict.e54d50d6.svg"},d1a5:function(e,t,s){e.exports=s.p+"assets/button.c633b7e1.svg"},d2c9:function(e,t,s){e.exports=s.p+"assets/validCode.9e7b7784.svg"},daf0:function(e,t,s){e.exports=s.p+"assets/edit.bb2b1351.svg"},e0ee:function(e,t,s){e.exports=s.p+"assets/textarea.6a19873e.svg"},ecef:function(e,t,s){e.exports=s.p+"assets/dashboard.ff8fda86.svg"},ed4c:function(e,t,s){e.exports=s.p+"assets/build.afff0ba4.svg"},f1c4:function(e,t,s){e.exports=s.p+"assets/job.b6da1ffe.svg"},f28e:function(e,t,s){e.exports=s.p+"assets/download.5153dc2b.svg"},fb96:function(e,t,s){e.exports=s.p+"assets/treeTable.90e38a2d.svg"}}]);