// ignore_for_file: public_member_api_docs, sort_constructors_first
// SOLID = S (Single Responsibility), O (Open/Closed Principle) , L (Liskov Substitution Principle), I (Interface Segregation Principle), D(Dependency Inversion Principle)
class User {
  final String email;
  final String password;
  User({
    required this.email,
    required this.password,
  });

}

class UserValidator{
  bool isValid(User user) => user.email.contains('@');
}

abstract class payment{
  void pay(double ammount);
}
class paypalPayment implements payment {
  void pay(double ammount){
    print("User paid by paypal $ammount");
  }
}

abstract class bird{}

abstract class fly_bird extends bird {
  void fly();
}
class eagle extends fly_bird {
  @override
  void fly() {
    // TODO: implement fly
    print("Eagle Flying");
  }
}
class sparrow extends fly_bird{
  @override
  void fly() {
    // TODO: implement fly
    print("sparrow flying");
  }
}


abstract class workable{
  void work();
}
abstract class eatable{
  void eat();
}
class Human implements workable, eatable{
  @override
  void work() {
    // TODO: implement work
    print("Working");
  }
  @override
  void eat() {
    // TODO: implement eat
    print("Eating");
  }
}
class Robot implements workable{
  @override
  void work() {
    // TODO: implement work
    print("Robot is working");
  }
}

abstract class IApiService{
  void getData();
}
class ApiService implements IApiService{
  void getData() => print("Fetching data");
}
class UserController {
  final IApiService api;
  UserController(this.api);
  void loadUser(){
    api.getData();
  }
}
