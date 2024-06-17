package endwork.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class message {
    private String name;
    private String mail;
    private String message;

    @Override
    public String toString() {
        return "message [name=" + name + ", mail=" + mail + ", message=" + message + "]";
    }
}
