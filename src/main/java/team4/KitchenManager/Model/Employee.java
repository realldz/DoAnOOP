package team4.KitchenManager.Model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper=false)
public class Employee extends InformationSchema{
    private String ImagePath;
    private String Position;
    private int Salary;
    @Override
    public String toString(){
        return "employees";
        }
    }
