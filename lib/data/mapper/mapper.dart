import 'package:clean_architecture_mvvm/app/extensions.dart';
import 'package:clean_architecture_mvvm/data/responses/responses.dart';
import 'package:clean_architecture_mvvm/domain/model.dart';

const EMPTY = "";
const ZERO = 0;

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(this?.id?.onEmpty() ?? EMPTY, this?.name.onEmpty() ?? EMPTY,
        this?.numOfNotifications?.orZero() ?? ZERO);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(this?.email?.onEmpty() ?? EMPTY,
        this?.phone?.onEmpty() ?? EMPTY, this?.link?.onEmpty() ?? EMPTY);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(
        this?.customer?.toDomain(), this?.contacts?.toDomain());
  }
}
