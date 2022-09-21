class CreateResFailure {
final bool? success;
final String? errorMessage;
const CreateResFailure({this.success , this.errorMessage });
CreateResFailure copyWith({bool? success, String? errorMessage}){
return CreateResFailure(
            success:success ?? this.success,
errorMessage:errorMessage ?? this.errorMessage
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'success': success,
'errorMessage': errorMessage
    };
}

static CreateResFailure fromJson(Map<String , Object?> json){
    return CreateResFailure(
            success:json['success'] == null ? null : json['success'] as bool,
errorMessage:json['errorMessage'] == null ? null : json['errorMessage'] as String
    );
}

@override
String toString(){
    return '''CreateResFailure(
                success:$success,
errorMessage:$errorMessage
    ) ''';
}

@override
bool operator ==(Object other){
    return other is CreateResFailure && 
        other.runtimeType == runtimeType &&
        other.success == success && 
other.errorMessage == errorMessage;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                success, 
errorMessage
    );
}
    
}
      
      
  
     