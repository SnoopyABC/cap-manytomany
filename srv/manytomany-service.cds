using manytomany as m from '../db/data-model';

service ManytomanyService {

    entity Client as projection on m.Client;
    entity Girls as projection on m.Girls;
    entity Orders as projection on m.Orders;

}
