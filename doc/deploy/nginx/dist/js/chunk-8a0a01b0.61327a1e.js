(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-8a0a01b0"],{"5bd3":function(e,t,r){"use strict";r.d(t,"a",(function(){return o}));var n=r("b775");function o(){return Object(n["b"])({url:"/admin/v1/tokens",method:"get"})}},b2f21:function(e,t,r){"use strict";r.d(t,"d",(function(){return o})),r.d(t,"b",(function(){return a})),r.d(t,"e",(function(){return s})),r.d(t,"c",(function(){return i})),r.d(t,"f",(function(){return u})),r.d(t,"a",(function(){return d}));var n=r("b775");function o(e){return Object(n["b"])({url:"/admin/v1/roles/list",method:"post",data:e})}function a(e){return Object(n["b"])({url:"/admin/v1/roles/"+e,method:"get"})}function s(){return Object(n["b"])({url:"/admin/v1/roles/option-list",method:"get"})}function i(e,t){return Object(n["b"])({url:"/admin/v1/roles",method:"post",data:e,headers:{"Content-Type":"application/json;charset=UTF-8","request-id":t}})}function u(e){return Object(n["b"])({url:"/admin/v1/roles",method:"put",data:e})}function d(e){return Object(n["b"])({url:"/admin/v1/roles/"+e,method:"delete"})}},d4a6:function(e,t,r){"use strict";r.r(t);var n=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("a-drawer",{attrs:{width:"35%","label-col":4,"wrapper-col":14,visible:e.open},on:{close:e.onClose}},[r("a-divider",{attrs:{orientation:"left"}},[r("b",[e._v(e._s(e.formTitle))])]),r("a-form-model",{ref:"form",attrs:{model:e.form,rules:e.rules}},[void 0===e.form.id?r("a-form-model-item",{attrs:{label:"用户名",prop:"username"}},[r("a-input",{attrs:{placeholder:"请输入"},model:{value:e.form.username,callback:function(t){e.$set(e.form,"username",t)},expression:"form.username"}})],1):e._e(),r("a-form-model-item",{attrs:{label:"部门",prop:"deptId"}},[r("a-tree-select",{staticStyle:{width:"100%"},attrs:{"dropdown-style":{maxHeight:"400px",overflow:"auto"},"tree-data":e.deptOptions,placeholder:"请选择",replaceFields:e.replaceFields,"tree-default-expand-all":""},on:{select:e.onSelect},model:{value:e.form.deptId,callback:function(t){e.$set(e.form,"deptId",t)},expression:"form.deptId"}})],1),void 0===e.form.id?r("a-form-model-item",{attrs:{label:"密码",prop:"password"}},[r("a-input-password",{attrs:{placeholder:"请输入",maxLength:20},model:{value:e.form.password,callback:function(t){e.$set(e.form,"password",t)},expression:"form.password"}})],1):e._e(),r("a-form-model-item",{attrs:{label:"状态",prop:"status"}},[r("a-radio-group",{attrs:{"button-style":"solid"},model:{value:e.form.status,callback:function(t){e.$set(e.form,"status",t)},expression:"form.status"}},e._l(e.statusOptions,(function(t,n){return r("a-radio-button",{key:n,attrs:{value:t.value}},[e._v(e._s(t.label))])})),1)],1),r("a-form-model-item",{attrs:{label:"角色",prop:"roleIds"}},[r("a-select",{attrs:{disabled:e.superAdminDisable,mode:"multiple",placeholder:"请选择"},model:{value:e.form.roleIds,callback:function(t){e.$set(e.form,"roleIds",t)},expression:"form.roleIds"}},e._l(e.roleOptions,(function(t,n){return r("a-select-option",{key:n,attrs:{value:t.value}},[e._v(" "+e._s(t.label)+" ")])})),1)],1),r("div",{staticClass:"bottom-control"},[r("a-space",[r("a-button",{attrs:{type:"primary",loading:e.submitLoading},on:{click:e.submitForm}},[e._v(" 保存 ")]),r("a-button",{attrs:{type:"dashed"},on:{click:e.cancel}},[e._v(" 取消 ")])],1)],1)],1)],1)},o=[],a=(r("d3b7"),r("159b"),r("d5bd")),s=r("b2f21"),i=r("5bd3"),u={name:"CreateForm",props:{deptOptions:{type:Array,required:!0}},components:{},data:function(){return{accessToken:"",submitLoading:!1,replaceFields:{children:"children",title:"name",key:"id",value:"id",path:"path"},roleOptions:[],superAdminDisable:!1,statusOptions:[{label:"正常",value:0},{label:"锁定",value:1}],initPassword:"test123",formTitle:"",form:{id:void 0,deptId:"",username:void 0,password:void 0,status:"0",deptPath:"",roleIds:[]},open:!1,rules:{username:[{required:!0,message:"用户名不能为空",trigger:"blur"}],password:[{required:!0,message:"密码不能为空",trigger:"blur"},{min:5,max:20,message:"用户密码长度必须介于 5 和 20 之间",trigger:"blur"}],deptId:[{required:!0,message:"请选择部门",trigger:"blur"}],roleIds:[{required:!0,message:"请选择角色",trigger:"blur"}]}}},filters:{},created:function(){},computed:{},watch:{},methods:{token:function(){var e=this;Object(i["a"])().then((function(t){e.accessToken=t.data.token}))},nodeFilter:function(e,t){var r=this;e.forEach((function(e){e.id===t&&(r.form.deptPath=e.path),e.children&&r.nodeFilter(e.children,t)}))},onSelect:function(e,t){this.nodeFilter(this.deptOptions,e)},onClose:function(){this.open=!1},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={id:void 0,deptId:"",username:void 0,password:void 0,status:0,deptPath:"",roleIds:[]}},handleAdd:function(){var e=this;this.reset(),this.token(),this.superAdminDisable=!1,this.$emit("select-tree"),Object(s["e"])().then((function(t){var r=[];t.data.forEach((function(e){r.push({value:e.value,label:e.label})})),e.roleOptions=r,e.open=!0,e.formTitle="用户新增",e.form.password=e.initPassword}))},handleUpdate:function(e){var t=this;this.reset(),this.$emit("select-tree");var r=e.id;Object(s["e"])().then((function(e){var r=[];e.data.forEach((function(e){r.push({value:e.value,label:e.label})})),t.roleOptions=r})),Object(a["b"])(r).then((function(e){t.form=e.data,t.open=!0,t.formTitle="用户修改",t.form.password="",t.superAdminDisable=1===e.data.superAdmin}))},submitForm:function(){var e=this;this.$refs.form.validate((function(t){if(!t)return!1;if(e.submitLoading=!0,void 0!==e.form.id){var r={userCO:e.form};Object(a["h"])(r).then((function(){e.$message.success("修改成功",3),e.open=!1,e.$emit("ok")})).finally((function(){e.submitLoading=!1}))}else{var n={userCO:e.form};Object(a["c"])(n,e.accessToken).then((function(){e.$message.success("新增成功",3),e.open=!1,e.$emit("ok")})).catch((function(){e.token()})).finally((function(){e.submitLoading=!1}))}}))}}},d=u,l=r("2877"),c=Object(l["a"])(d,n,o,!1,null,null,null);t["default"]=c.exports},d5bd:function(e,t,r){"use strict";r.d(t,"d",(function(){return o})),r.d(t,"b",(function(){return a})),r.d(t,"c",(function(){return s})),r.d(t,"h",(function(){return i})),r.d(t,"a",(function(){return u})),r.d(t,"f",(function(){return d})),r.d(t,"j",(function(){return l})),r.d(t,"i",(function(){return c})),r.d(t,"k",(function(){return m})),r.d(t,"e",(function(){return f})),r.d(t,"g",(function(){return p}));var n=r("b775");function o(e){return Object(n["b"])({url:"/admin/v1/users/list",method:"post",data:e})}function a(e){return Object(n["b"])({url:"/admin/v1/users/"+e,method:"get"})}function s(e,t){return Object(n["b"])({url:"/admin/v1/users",method:"post",data:e,headers:{"Content-Type":"application/json;charset=UTF-8","request-id":t}})}function i(e){return Object(n["b"])({url:"/admin/v1/users",method:"put",data:e})}function u(e){return Object(n["b"])({url:"/admin/v1/users/"+e,method:"delete"})}function d(e){return Object(n["b"])({url:"/admin/v1/users/reset-password",method:"put",data:e})}function l(e){return Object(n["b"])({url:"/admin/v1/users/status",data:e,method:"put"})}function c(e){return Object(n["b"])({url:"/admin/v1/users/profile",method:"put",data:e})}function m(e){return Object(n["b"])({url:"/admin/v1/oss/upload",method:"post",data:e})}function f(){return Object(n["b"])({url:"/admin/v1/users/option-list",method:"get"})}function p(e){return Object(n["b"])({url:"/admin/v1/users/password",data:e,method:"put"})}}}]);