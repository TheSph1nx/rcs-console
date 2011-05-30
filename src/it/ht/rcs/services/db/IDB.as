package it.ht.rcs.services.db
{
  import mx.rpc.AsyncToken;
  import it.ht.rcs.console.model.Group;
  import it.ht.rcs.console.model.User;

  public interface IDB
  { 
    function setBusyCursor(value: Boolean):void;
      
    function login(params:Object, onResult:Function, onFault:Function):void;
    function logout(onResult:Function = null, onFault:Function = null):void;
    
    function session_index(onResult:Function = null, onFault:Function = null):void;
    function session_destroy(cookie:String, onResult:Function = null, onFault:Function = null):void;
   
    function audit_index(filter: Object, onResult:Function = null, onFault:Function = null):void;
    function audit_filters(onResult:Function = null, onFault:Function = null):void;
    
    function license_limit(onResult:Function = null, onFault:Function = null):void;
    function license_count(onResult:Function = null, onFault:Function = null):void;

    function status_index(onResult:Function = null, onFault:Function = null):void;
    function status_counters(onResult:Function = null, onFault:Function = null):void;
    function status_destroy(id:String, onResult:Function = null, onFault:Function = null):void;
    
    function user_index(onResult:Function = null, onFault:Function = null):void;
    function user_show(id:String, onResult:Function = null, onFault:Function = null):void;
    function user_create(user:User, onResult:Function = null, onFault:Function = null):void;
    function user_update(user:User, property:Object, onResult:Function = null, onFault:Function = null):void;
    function user_destroy(user:User, onResult:Function = null, onFault:Function = null):void;
    
    function group_index(onResult:Function = null, onFault:Function = null):void;
    function group_show(id:String, onResult:Function = null, onFault:Function = null):void;
    function group_create(group:Group, onResult:Function = null, onFault:Function = null):void;
    function group_update(group:Group, property:Object, onResult:Function = null, onFault:Function = null):void;
    function group_destroy(group:Group, onResult:Function = null, onFault:Function = null):void;
    function group_add_user(group:Group, user:User, onResult:Function = null, onFault:Function = null):void;
    function group_del_user(group:Group, user:User, onResult:Function = null, onFault:Function = null):void;
    function group_alert(group:Group, onResult:Function = null, onFault:Function = null):void;
    
    function task_index(onResult:Function = null, onFault:Function = null):void;
    function task_show(id:String, onResult:Function = null, onFault:Function = null):void;
    function task_create(type:String, onResult:Function = null, onFault:Function = null):void;
    function task_destroy(id:String, onResult:Function = null, onFault:Function = null):void;
  }
}
