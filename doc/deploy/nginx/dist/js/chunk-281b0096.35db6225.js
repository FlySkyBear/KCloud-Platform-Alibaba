(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-281b0096","chunk-6485dbc4"],{"5a1d":function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("page-header-wrapper",[a("a-card",{attrs:{bordered:!1}},[a("div",{staticClass:"table-page-search-wrapper"},[a("a-form",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:list"],expression:"['resource:list']"}],attrs:{layout:"inline"}},[a("a-row",{attrs:{gutter:48}},[a("a-col",{attrs:{md:8,sm:24}},[a("a-form-item",{attrs:{label:"资源编号"}},[a("a-input",{attrs:{placeholder:"请输入资源编号","allow-clear":""},model:{value:e.queryParam.id,callback:function(t){e.$set(e.queryParam,"id",t)},expression:"queryParam.id"}})],1)],1),a("a-col",{attrs:{md:8,sm:24}},[a("a-form-item",{attrs:{label:"资源名称"}},[a("a-input",{attrs:{placeholder:"请输入资源名称","allow-clear":""},model:{value:e.queryParam.title,callback:function(t){e.$set(e.queryParam,"title",t)},expression:"queryParam.title"}})],1)],1),a("a-col",{attrs:{md:8,sm:24}},[a("a-form-item",{attrs:{label:"状态"}},[a("a-select",{staticStyle:{width:"100%"},attrs:{placeholder:"审批状态","allow-clear":""},model:{value:e.queryParam.status,callback:function(t){e.$set(e.queryParam,"status",t)},expression:"queryParam.status"}},e._l(e.statusOptions,(function(t,r){return a("a-select-option",{key:r,attrs:{value:t.value}},[e._v(e._s(t.label))])})),1)],1)],1),a("a-col",{attrs:{md:8,sm:24}},[a("a-form-item",{attrs:{label:"类型"}},[a("a-select",{staticStyle:{width:"100%"},attrs:{placeholder:"资源类型","allow-clear":""},model:{value:e.queryParam.code,callback:function(t){e.$set(e.queryParam,"code",t)},expression:"queryParam.code"}},e._l(e.codeOptions,(function(t,r){return a("a-select-option",{key:r,attrs:{value:t.value}},[e._v(e._s(t.label))])})),1)],1)],1),a("a-col",{attrs:{md:8,sm:24}},[a("span",{staticClass:"table-page-search-submitButtons"},[a("a-button",{attrs:{type:"primary"},on:{click:e.handleQuery}},[a("a-icon",{attrs:{type:"search"}}),e._v("查询")],1),a("a-button",{staticStyle:{"margin-left":"8px"},on:{click:e.resetQuery}},[a("a-icon",{attrs:{type:"redo"}}),e._v("重置")],1)],1)])],1)],1)],1),a("div",{staticClass:"table-operations"},[a("a-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:insert"],expression:"['resource:insert']"}],attrs:{type:"primary"},on:{click:function(t){return e.$refs.createForm.handleAdd()}}},[a("a-icon",{attrs:{type:"plus"}}),e._v("新增 ")],1),a("a-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:sync"],expression:"['resource:sync']"}],attrs:{loading:e.syncLoading,type:"danger"},on:{click:function(t){return e.syncIndex()}}},[a("a-icon",{attrs:{type:"sync"}}),e._v(" 同步 ")],1)],1),a("create-form",{ref:"createForm",on:{ok:e.getList}}),a("a-table",{attrs:{loading:e.loading,size:e.tableSize,rowKey:"id",columns:e.columns,"data-source":e.list,pagination:!1,bordered:e.tableBordered},scopedSlots:e._u([{key:"status",fn:function(t,r){return a("span",{},[e._v(" "+e._s(e.statusFormat(r))+" ")])}},{key:"code",fn:function(t,r){return a("span",{},[e._v(" "+e._s(e.codeFormat(r))+" ")])}},{key:"operation",fn:function(t,r){return a("span",{},[a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:insert"],expression:"['resource:insert']"}],on:{click:function(t){return e.$refs.createForm.handleAdd()}}},[a("a-icon",{attrs:{type:"plus"}}),e._v("新增 ")],1),2==r.status||-1==r.status?a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:update"],expression:"['resource:update']"}],attrs:{type:"vertical"}}):e._e(),2==r.status||-1==r.status?a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:update"],expression:"['resource:update']"}],on:{click:function(t){return e.$refs.createForm.handleUpdate(r,void 0)}}},[a("a-icon",{attrs:{type:"edit"}}),e._v("修改 ")],1):e._e(),2==r.status||-1==r.status?a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:detail"],expression:"['resource:detail']"}],attrs:{type:"vertical"}}):e._e(),2==r.status||-1==r.status?a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:detail"],expression:"['resource:detail']"}],on:{click:function(t){return e.handleQuery1(r)}}},[a("a-icon",{attrs:{type:"eye"}}),e._v("查看 ")],1):e._e(),2==r.status||-1==r.status?a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:download"],expression:"['resource:download']"}],attrs:{type:"vertical"}}):e._e(),2==r.status||-1==r.status?a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:download"],expression:"['resource:download']"}],on:{click:function(t){return e.download(r)}}},[a("a-icon",{attrs:{type:"download"}}),e._v("下载 ")],1):e._e(),2!=r.status&&-1!=r.status?a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:diagram"],expression:"['resource:diagram']"}],attrs:{type:"vertical"}}):e._e(),2!=r.status&&-1!=r.status?a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:diagram"],expression:"['resource:diagram']"}],on:{click:function(t){return e.handleQuery2(r)}}},[a("a-icon",{attrs:{type:"gold"}}),e._v("查看 ")],1):e._e(),a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:audit-log"],expression:"['resource:audit-log']"}],attrs:{type:"vertical"}}),a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:audit-log"],expression:"['resource:audit-log']"}],on:{click:function(t){return e.handleQuery3(r)}}},[a("a-icon",{attrs:{type:"file"}}),e._v("审批日志 ")],1),2==r.status||-1==r.status?a("a-divider",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:delete"],expression:"['resource:delete']"}],attrs:{type:"vertical"}}):e._e(),2==r.status||-1==r.status?a("a",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["resource:delete"],expression:"['resource:delete']"}],on:{click:function(t){return e.handleDelete(r)}}},[a("a-icon",{attrs:{type:"delete"}}),e._v("删除 ")],1):e._e()],1)}}])}),a("a-pagination",{staticClass:"ant-table-pagination",attrs:{"show-size-changer":"","show-quick-jumper":"",current:e.queryParam.pageNum,total:e.total,"page-size":e.queryParam.pageSize,showTotal:function(){return"共 "+e.total+" 条"}},on:{showSizeChange:e.onShowSizeChange,change:e.changeSize}})],1),a("a-modal",{ref:"noticeDetail",attrs:{width:900,visible:e.visible,footer:null},on:{cancel:e.close}},[a("template",{slot:"title"},[a("center",[a("a-tag",{attrs:{color:"blue"}},[e._v(e._s(e.resourceType))]),e._v(e._s(e.resourceTitle))],1)],1),a("a-table",{directives:[{name:"show",rawName:"v-show",value:e.visible3,expression:"visible3"}],attrs:{rowKey:"id",columns:e.columns1,"data-source":e.list1,pagination:!1,bordered:e.tableBordered},scopedSlots:e._u([{key:"auditStatus",fn:function(t,r){return a("span",{},[e._v(" "+e._s(e.auditStatusFormat(r))+" ")])}}])}),a("img",{directives:[{name:"show",rawName:"v-show",value:e.visible2,expression:"visible2"}],staticStyle:{width:"100%",height:"100%"},attrs:{src:e.diagramUrl}}),a("img",{directives:[{name:"show",rawName:"v-show",value:e.visible1,expression:"visible1"}],staticStyle:{width:"100%",height:"100%"},attrs:{src:e.resourceUrl}}),a("audio",{directives:[{name:"show",rawName:"v-show",value:e.visible4,expression:"visible4"}],attrs:{loop:"loop",src:e.resourceUrl,controls:"controls"}},[a("object",{attrs:{data:e.resourceUrl}},[a("embed",{attrs:{src:e.resourceUrl}})])]),a("video",{directives:[{name:"show",rawName:"v-show",value:e.visible5,expression:"visible5"}],attrs:{src:e.resourceUrl,loop:"loop",width:"200",height:"100",controls:"controls"}},[a("source",{attrs:{src:e.resourceUrl,type:"video/mp4"}}),a("object",{attrs:{data:e.resourceUrl,width:"200",height:"100"}},[a("embed",{attrs:{src:e.resourceUrl,width:"200",height:"100"}})])])],2)],1)},i=[],s=(a("d3b7"),a("3ca3"),a("ddb0"),a("2b3d"),a("9861"),a("765c")),o=a("88b4"),n=a("435a"),l=a("c1df"),u=a.n(l),c={name:"Resource",components:{CreateForm:o["default"]},mixins:[n["a"]],data:function(){return{diagramUrl:"",resourceTitle:"",resourceUrl:"",resourceType:"",list:[],visible1:!1,visible2:!1,visible3:!1,visible4:!1,visible5:!1,syncLoading:!1,loading:!1,total:0,visible:!1,queryParam:{pageNum:1,pageSize:10,title:void 0,code:"",status:"",id:""},codeOptions:[{label:"音频",value:"audio"},{label:"视频",value:"video"},{label:"图片",value:"image"}],statusOptions:[{label:"待审批",value:0},{label:"审批中",value:1},{label:"驳回审批",value:-1},{label:"通过审批",value:2}],columns:[{title:"标题",dataIndex:"title",ellipsis:!0,align:"center"},{title:"状态",dataIndex:"status",ellipsis:!0,scopedSlots:{customRender:"status"},align:"center"},{title:"类型",dataIndex:"code",ellipsis:!0,scopedSlots:{customRender:"code"},align:"center"},{title:"备注",dataIndex:"remark",ellipsis:!0,align:"center"},{title:"操作",dataIndex:"operation",width:"31%",scopedSlots:{customRender:"operation"},align:"center"}],columns1:[{title:"审核人",dataIndex:"auditName",ellipsis:!0,align:"center"},{title:"审核时间",dataIndex:"auditDate",ellipsis:!0,align:"center"},{title:"审核状态",dataIndex:"auditStatus",ellipsis:!0,scopedSlots:{customRender:"auditStatus"},align:"center"},{title:"审核意见",dataIndex:"comment",ellipsis:!0,align:"center"}],list1:[]}},filters:{},created:function(){this.linkQuery()},computed:{},watch:{$route:function(e,t){this.linkQuery()}},methods:{download:function(e){var t=this;this.loading=!0,Object(s["d"])(e.id).then((function(e){var a=window.URL.createObjectURL(e),r=document.createElement("a");r.style.display="none",r.download=u()(new Date).format("YYYYMMDDHHmmss")+".png",r.href=a,document.body.appendChild(r),r.click(),document.body.removeChild(r),window.URL.revokeObjectURL(a),t.loading=!1,t.$message.success("下载成功",3)}))},linkQuery:function(){var e=this.$route.query;"{}"!==JSON.stringify(e)&&(this.queryParam.id=e.id),this.getList()},syncIndex:function(){var e=this;e.syncLoading=!0,Object(s["m"])().then((function(){e.syncLoading=!1,e.$message.success("索引同步成功",3)}))},handleQuery3:function(e){var t=this;this.resourceTitle="审批日志",this.visible=!0,this.visible2=!1,this.visible1=!1,this.visible3=!0,this.visible4=!1,this.visible5=!1;var a=e.id;Object(s["e"])(a).then((function(e){t.list1=e.data}))},close:function(){this.visible=!1,this.diagramUrl="",this.resourceUrl="",this.resourceTitle="",this.resourceType="",this.list1=[],this.visible3=!1,this.visible1=!1,this.visible2=!1,this.visible4=!1,this.visible5=!1},getList:function(){var e=this;this.loading=!0,Object(s["k"])(this.queryParam).then((function(t){e.list=t.data.records,e.total=t.data.total-0,e.loading=!1}))},handleQuery1:function(e){var t=this;this.visible=!0,this.visible2=!1,this.visible3=!1;var a=e.id;Object(s["h"])(a).then((function(e){t.resourceUrl=e.data.url,t.resourceTitle=e.data.title;var a=e.data.code;"video"===a&&(t.resourceType="视频",t.visible1=!1,t.visible5=!0,t.visible4=!1),"audio"===a&&(t.resourceType="音频",t.visible1=!1,t.visible5=!1,t.visible4=!0),"image"===a&&(t.resourceType="图片",t.visible1=!0,t.visible5=!1,t.visible4=!1)}))},auditStatusFormat:function(e){return 0===e.auditStatus?"审批驳回":1===e.auditStatus?"审批通过":void 0},handleQuery2:function(e){var t=this;this.visible=!0,this.visible2=!0,this.visible1=!1,this.resourceTitle="查看流程",Object(s["f"])(e.processInstanceId).then((function(e){t.diagramUrl="data:image/png;base64,"+e.data}))},handleQuery:function(){this.queryParam.pageNum=1,this.getList()},statusFormat:function(e){return 0===e.status?"待审批":1===e.status?"审批中":-1===e.status?"驳回审批":"通过审批"},codeFormat:function(e){return"audio"===e.code?"音频":"video"===e.code?"视频":"image"===e.code?"图片":"未知"},resetQuery:function(){this.queryParam={pageNum:1,pageSize:10,title:void 0,code:"",status:"",id:""},this.handleQuery()},onShowSizeChange:function(e,t){this.queryParam.pageSize=t,this.getList()},changeSize:function(e,t){this.queryParam.pageNum=e,this.queryParam.pageSize=t,this.getList()},handleDelete:function(e){var t=this,a=e.id;this.$confirm({title:"确认删除所选中数据?",content:"当前选中资源编号为"+a+"的数据",onOk:function(){return Object(s["c"])(a).then((function(){t.getList(),t.$message.success("删除成功",3)}))},onCancel:function(){}})}}},d=c,m=a("2877"),p=Object(m["a"])(d,r,i,!1,null,null,null);t["default"]=p.exports},"765c":function(e,t,a){"use strict";a.d(t,"k",(function(){return i})),a.d(t,"h",(function(){return s})),a.d(t,"i",(function(){return o})),a.d(t,"b",(function(){return n})),a.d(t,"a",(function(){return l})),a.d(t,"l",(function(){return u})),a.d(t,"o",(function(){return c})),a.d(t,"c",(function(){return d})),a.d(t,"q",(function(){return m})),a.d(t,"e",(function(){return p})),a.d(t,"m",(function(){return h})),a.d(t,"f",(function(){return v})),a.d(t,"d",(function(){return f}));var r=a("b775");function i(e){return Object(r["b"])({url:"/admin/v1/resource/list",method:"post",data:e})}function s(e){return Object(r["b"])({url:"/admin/v1/resource/"+e,method:"get"})}function o(e){return Object(r["b"])({url:"/admin/v1/resource/"+e+"/detail-task",method:"get"})}function n(e,t){return Object(r["b"])({url:"/admin/v1/resource/audit-task",method:"post",data:e,headers:{"Content-Type":"application/json;charset=UTF-8","request-id":t}})}function l(e){return Object(r["b"])({url:"/admin/sys/resource/image/api/insert",method:"post",data:e})}function u(e){return Object(r["b"])({url:"/admin/v1/resource/task-list",method:"post",data:e})}function c(e){return Object(r["b"])({url:"/admin/v1/resource",method:"put",data:e})}function d(e){return Object(r["b"])({url:"/admin/sys/resource/image/api/delete?id="+e,method:"delete"})}function m(e){return Object(r["b"])({url:"/admin/v1/resource/upload",method:"post",data:e})}function p(e){return Object(r["b"])({url:"/admin/sys/resource/image/api/auditLog?businessId="+e,method:"get"})}function h(){return Object(r["b"])({url:"/admin/sys/resource/image/api/syncIndex",method:"post"})}function v(e){return Object(r["b"])({url:"/admin/sys/resource/image/api/diagram?processInstanceId="+e,method:"get"})}function f(e){return Object(r["b"])({url:"/admin/sys/resource/image/api/download?id="+e,method:"get",responseType:"blob"})}},"88b4":function(e,t,a){"use strict";a.r(t);var r=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("a-drawer",{attrs:{width:"35%","label-col":4,"wrapper-col":14,visible:e.open},on:{close:e.onClose}},[a("a-divider",{attrs:{orientation:"left"}},[a("b",[e._v(e._s(e.formTitle))])]),a("a-form-model",{ref:"form",attrs:{model:e.form,rules:e.rules}},[a("a-form-model-item",{attrs:{label:"标题",prop:"title"}},[a("a-input",{attrs:{placeholder:"请输入标题"},model:{value:e.form.title,callback:function(t){e.$set(e.form,"title",t)},expression:"form.title"}})],1),a("a-form-model-item",{attrs:{label:"资源"}},[a("a-input",{staticStyle:{display:"none"},attrs:{placeholder:"请上传资源"},model:{value:e.form.url,callback:function(t){e.$set(e.form,"url",t)},expression:"form.url"}}),a("a-upload",{attrs:{name:"file",accept:".gif,.GIF,.jpg,.JPG,.jpeg,.JPEG,.png,.PNG,.bmp,.BMP,.webp,.WEBP","before-upload":e.beforeUpload},on:{change:e.uploadFile}},[a("a-button",{attrs:{disabled:e.disabled}},[e._v(" 上传资源 ")])],1),a("img",{directives:[{name:"show",rawName:"v-show",value:e.display1,expression:"display1"}],attrs:{src:e.form.url,width:"100",height:"100"}}),a("audio",{directives:[{name:"show",rawName:"v-show",value:e.display2,expression:"display2"}],attrs:{loop:"loop",src:e.form.url,controls:"controls"}},[a("object",{attrs:{data:e.form.url}},[a("embed",{attrs:{src:e.form.url}})])]),a("video",{directives:[{name:"show",rawName:"v-show",value:e.display3,expression:"display3"}],attrs:{src:e.form.url,loop:"loop",width:"200",height:"100",controls:"controls"}},[a("source",{attrs:{src:e.form.url,type:"video/mp4"}}),a("object",{attrs:{data:e.form.url,width:"200",height:"100"}},[a("embed",{attrs:{src:e.form.url,width:"200",height:"100"}})])])],1),a("a-form-model-item",{attrs:{label:"备注",prop:"remark"}},[a("a-input",{attrs:{placeholder:"请输入备注",type:"textarea","allow-clear":""},model:{value:e.form.remark,callback:function(t){e.$set(e.form,"remark",t)},expression:"form.remark"}})],1),a("div",{staticClass:"bottom-control"},[a("a-space",[a("a-button",{attrs:{type:"primary",loading:e.submitLoading},on:{click:e.submitForm}},[e._v(" 保存 ")]),a("a-button",{attrs:{type:"dashed"},on:{click:e.cancel}},[e._v(" 取消 ")])],1)],1)],1)],1)},i=[],s=(a("d3b7"),a("765c")),o={name:"CreateForm",components:{},data:function(){return{submitLoading:!1,formTitle:"",tagInputVisible:!1,tagInputValue:"",form:{id:void 0,title:void 0,url:void 0,code:"",remark:void 0,instanceId:void 0},disabled:!1,open:!1,display1:!1,display2:!1,display3:!1,rules:{title:[{required:!0,message:"标题不能为空",trigger:"blur"}],remark:[{required:!0,message:"备注不能为空",trigger:"blur"}]}}},filters:{},created:function(){},computed:{},watch:{},methods:{onClose:function(){this.open=!1},cancel:function(){this.open=!1,this.reset()},reset:function(){this.disabled=!1,this.form={id:void 0,title:void 0,url:void 0,code:"",remark:void 0,instanceId:void 0}},uploadFile:function(e){var t=this;if(e.fileList.length>0){this.disabled=!0;var a=new FormData;a.append("file",e.file),Object(s["q"])(a).then((function(e){t.form.url=e.data.url,t.display1=!0}))}else this.display1=!1,this.disabled=!1,this.form.url=void 0},beforeUpload:function(){return!1},handleAdd:function(){this.reset(),this.open=!0,this.formTitle="图片新增"},handleUpdate:function(e,t){var a=this;this.reset();var r=e?e.id:t;Object(s["h"])(r).then((function(e){a.form.id=e.data.id,a.form.url=e.data.url,a.form.title=e.data.title,a.form.code=e.data.code,"image"===a.form.code&&(a.display1=!0,a.display2=!1,a.display3=!1),"audio"===a.form.code&&(a.display1=!1,a.display2=!0,a.display3=!1),"video"===a.form.code&&(a.display1=!1,a.display2=!1,a.display3=!0),a.form.instanceId=e.data.instanceId,a.form.remark=e.data.remark,a.open=!0,a.formTitle="资源修改"}))},submitForm:function(){var e=this;this.$refs.form.validate((function(t){if(!t)return!1;if(e.submitLoading=!0,void 0!==e.form.id){var a={resourceCO:e.form};Object(s["o"])(a).then((function(){e.$message.success("修改成功",3),e.open=!1,e.$emit("ok")})).finally((function(){e.submitLoading=!1}))}else Object(s["a"])(e.form).then((function(t){e.$message.success("新增成功",3),e.open=!1,e.$emit("ok")})).finally((function(){e.submitLoading=!1}))}))}}},n=o,l=a("2877"),u=Object(l["a"])(n,r,i,!1,null,null,null);t["default"]=u.exports}}]);