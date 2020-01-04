const datas = {
  // 49xx 用户相关
  MAIL_ERROR: {
    errno: 4901,
    errcode: 'mail_error',
    errmsg: '邮箱格式错误',
  },
  GET_USER_ERROR: {
    errno: 4902,
    errcode: 'get_user_error',
    errmsg: '获取用户信息错误',
  },
  GET_USER_RELATIONS_ERROR: {
    errno: 4903,
    errcode: 'get_user_relations_error',
    errmsg: '获取用户关系错误',
  },
  USER_RELATIONS_ERROR: {
    errno: 4904,
    errcode: 'user_relations_error',
    errmsg: '用户关系错误',
  },
  USER_TYPE_ERROR: {
    errno: 4905,
    errcode: 'user_type_error',
    errmsg: '用户类型错误',
  },
  USER_PRIVILEGE_ERROR: {
    errno: 4906,
    errcode: 'user_privilege_error',
    errmsg: '用户权限错误',
  },
  GET_GDT_ADVERTISER_ERROR: {
    errno: 4907,
    errcode: 'get_gdt_advertiser_error',
    errmsg: '获取gdt用户信息错误',
  },
  GET_GDT_ADVERTISER_FUND_ERROR: {
    errno: 4908,
    errcode: 'get_gdt_advertiser_fund_error',
    errmsg: '获取gdt用户金额错误',
  },
  RELIEVE_ADVERTISER_ERROR: {
    errno: 4909,
    errcode: 'relieve_advertiser_error',
    errmsg: '广告主解绑失败',
  },
  ADVERTISER_USER_RELATIONS_NOT_NULL_ERROR: {
    errno: 4910,
    errcode: 'advertiser_user_relations_not_null_error',
    errmsg: '广告主绑定的投放管理员不为空',
  },
  ADVERTISING_ADMIN_USER_RELATIONS_NOT_NULL_ERROR: {
    errno: 4911,
    errcode: 'advertising_admin_user_relations_not_null_error',
    errmsg: '普通投放管理员绑定的广告主不为空',
  },
  ADD_USER_ERROR: {
    errno: 4912,
    errcode: 'add_user_error',
    errmsg: '创建用户错误',
  },
  USER_CAN_NOT_FOUND_ERROR: {
    errno: 4913,
    errcode: 'user_can_not_found_error',
    errmsg: '用户不存在',
  },
  PASSWORD_CHECK_ERROR: {
    errno: 4914,
    errcode: 'password_check_error',
    errmsg: '密码校验错误',
  },
  USER_BINDING_RELATION_IS_NOT_NULL_ERROR: {
    errno: 4915,
    errcode: 'user_binding_relation_is_not_null_error',
    errmsg: '用户绑定关系不为空',
  },
  DELETE_USER_ERROR: {
    errno: 4916,
    errcode: 'delete_user_error',
    errmsg: '删除用户错误',
  },
  UPDATE_USER_ERROR: {
    errno: 4917,
    errcode: 'update_user_error',
    errmsg: '更新用户错误',
  },
  NO_PERMISSION_ERROR: {
    errno: 4918,
    errcode: 'no_permission_error',
    errmsg: '无该账号的访问权限',
  },
  CHECK_PERMISSION_ERROR: {
    errno: 4919,
    errcode: 'check_permission_error',
    errmsg: '校验权限异常',
  },
  GET_EXPIRE_TIME_ERROR: {
    errno: 4920,
    errcode: 'get_expire_time_error',
    errmsg: '获取用户过期时间失败',
  },
  ACCOUNT_ID_EXIST_ERROR: {
    errno: 4921,
    errcode: 'account_id_exist_error',
    errmsg: 'account_id 已存在',
  },
  USER_STATUS_ERROR: {
    errno: 4922,
    errcode: 'user_status_error',
    errmsg: '用户状态错误',
  }
};


const mess =
`| errno   |  errcode  |  errmsg  | 
| ------------ | ------------ | ------------ |`

console.log(mess)
for(key of Object.keys(datas)) {
  const data = datas[key];
  const msg = `| ${data.errno} | ${data.errcode} | ${data.errmsg} |`;
  console.log(msg)
}