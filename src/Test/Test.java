package Test;

import Utils.HibernateUtils;
import com.sun.AdministratorEntity;
import com.sun.UserEntity;
import net.sf.json.JSONObject;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {

    public static void main(String[] args) {


//    Session session= HibernateUtils.getSession();
//    Transaction transaction=session.beginTransaction();
    AdministratorEntity administratorEntity=new AdministratorEntity();
    administratorEntity.setAdmId(2222);
    administratorEntity.setAdmName("zxr");
//    session.save(administratorEntity);
//    transaction.commit();
//    session.close();
//    System.out.println(1111);

//        Session session1=HibernateUtils.getSession();
//        Transaction transaction1=session1.beginTransaction();
//        AdministratorEntity administratorEntity=session1.load(AdministratorEntity.class,1);
//        transaction1.commit();
//        session1.close();
//        System.out.println(administratorEntity.getAdmId());
//        System.out.println(administratorEntity.getAdmName());
        JSONObject jsonObject=JSONObject.fromObject(administratorEntity);
        System.out.println(jsonObject);
}
}
