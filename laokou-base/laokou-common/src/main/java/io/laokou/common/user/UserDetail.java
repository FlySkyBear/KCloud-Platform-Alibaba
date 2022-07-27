package io.laokou.common.user;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.serializer.ToStringSerializer;
import io.laokou.common.vo.SysDeptVO;
import io.laokou.common.vo.SysRoleVO;
import lombok.Data;
import java.util.List;
/**
 * @author Kou Shenhai
 */
@Data
public class UserDetail {
    @JSONField(serializeUsing = ToStringSerializer.class)
    private Long id;
    private String username;
    private String imgUrl;
    private Integer superAdmin;
    private Integer status;
    private String email;
    private String mobile;
    private String password;
    private String zfbOpenid;
    @JSONField(serializeUsing = ToStringSerializer.class)
    private Long deptId;
    private List<String> permissionsList;
    private List<SysRoleVO> roles;
    private List<SysDeptVO> depts;
}
