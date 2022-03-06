import Arr "mo:base/Array";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import NewArr "mo:base/Array";


actor {
    
  private var Number : Nat   = 0;
//  private var Arr    :[Nat] = [6,7,1,3,5,9,2];
  private var sum    : Nat  = 0;
  private var tmpmax : Nat  = 0;
  private var tmp    : Nat  = 0;

  // 1
  public func add (a : Nat, b : Nat) : async Nat{
    return a+b;
  };
  
  // 2
  public func square(n: Nat) : async Nat{
    return n*n;
  };

  // 3
  public func days_to_second(n : Nat): async Nat{    
    return n*(24*60*60);
  };
  
  // 4_1
  public func increment_counter (n : Nat): async Nat{
    Number += n;
    return Number;
  };
  
  // 4_2
  public func clear_counter (){
    Number:=0;    
  };

  // 5
  public func divide (a : Nat, b : Nat) : async Bool{
    var c : Nat=0;
    c := a % b;
    
    if (c==0)
    {
      return true;
    }
    else
    {
      return false;
    };
  };

  // 6 
  public func is_even (n : Nat) : async Bool{
    if (n==0)
     {
      return false;
     }
    else
     {
      return true;
     }
  };
  // 7
   public func sum_of_array(Arr : [Nat]) : async Nat{
     
     sum :=0;
     
     if(Arr.size()==0)
       return 0;
      
      for(tmp in Arr.vals())
       {
         sum += tmp;
       };
       return sum;
   };
  
  // 8
  public func maximum (Arr : [Nat]) : async Nat{
     
       tmpmax := 0;
       if(Arr.size()==0) return 0;
       

       for(tmp in Arr.vals())
       {
         if (tmp > tmpmax)
         {
           tmpmax := tmp;
         };
       };
       
       return tmpmax;
  };
  
  // 9
  public func remove_from_array (Arr : [Nat],n : Nat) : async [Nat]{
    var NewArr : [Nat] =  [];
    for (tmp in Arr.vals())
    {
      if (tmp !=n)
        NewArr[]. := tmp;
    };
    return NewArr;
  };

  public func selection_sort () : async [Nat]
  {
    return [1,3,4];
  };

};
