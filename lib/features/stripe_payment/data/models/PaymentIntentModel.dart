import '../../domain/entites/PaymentIntentEntity.dart';

/// id : "pi_1JDo5VCLU6thghKmgmMy0cJE"
/// object : "payment_intent"
/// amount : 2000
/// amount_capturable : 0
/// amount_details : {"tip":{}}
/// amount_received : 0
/// application : null
/// application_fee_amount : null
/// automatic_payment_methods : {"enabled":true}
/// canceled_at : null
/// cancellation_reason : null
/// capture_method : "automatic"
/// client_secret : "pi_1JDo5VCLU6thghKmgmMy0cJE_secret_kYava9v7wbiAxrGs7YfLiL6m9"
/// confirmation_method : "automatic"
/// created : 1626430569
/// currency : "usd"
/// customer : null
/// description : "Created by stripe.com/docs demo"
/// invoice : null
/// last_payment_error : null
/// latest_charge : null
/// livemode : false
/// metadata : {}
/// next_action : null
/// on_behalf_of : null
/// payment_method : null
/// payment_method_configuration_details : null
/// payment_method_options : {"card":{"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}}
/// payment_method_types : ["card"]
/// processing : null
/// receipt_email : null
/// review : null
/// setup_future_usage : null
/// shipping : null
/// statement_descriptor : null
/// statement_descriptor_suffix : null
/// status : "requires_payment_method"
/// transfer_data : null
/// transfer_group : null

class PaymentIntentModel extends PaymentIntentEntity {
  PaymentIntentModel({
    String? id,
    String? object,
    int? amount,
    int? amountCapturable,
    AmountDetails? amountDetails,
    int? amountReceived,
    dynamic application,
    dynamic applicationFeeAmount,
    AutomaticPaymentMethods? automaticPaymentMethods,
    dynamic canceledAt,
    dynamic cancellationReason,
    String? captureMethod,
    String? clientSecret,
    String? confirmationMethod,
    int? created,
    String? currency,
    dynamic customer,
    String? description,
    dynamic invoice,
    dynamic lastPaymentError,
    dynamic latestCharge,
    bool? livemode,
    dynamic metadata,
    dynamic nextAction,
    dynamic onBehalfOf,
    dynamic paymentMethod,
    dynamic paymentMethodConfigurationDetails,
    PaymentMethodOptions? paymentMethodOptions,
    List<String>? paymentMethodTypes,
    dynamic processing,
    dynamic receiptEmail,
    dynamic review,
    dynamic setupFutureUsage,
    dynamic shipping,
    dynamic statementDescriptor,
    dynamic statementDescriptorSuffix,
    String? status,
    dynamic transferData,
    dynamic transferGroup,}){
    _id = id;
    _object = object;
    _amount = amount;
    _amountCapturable = amountCapturable;
    _amountDetails = amountDetails;
    _amountReceived = amountReceived;
    _application = application;
    _applicationFeeAmount = applicationFeeAmount;
    _automaticPaymentMethods = automaticPaymentMethods;
    _canceledAt = canceledAt;
    _cancellationReason = cancellationReason;
    _captureMethod = captureMethod;
    _clientSecret = clientSecret;
    _confirmationMethod = confirmationMethod;
    _created = created;
    _currency = currency;
    _customer = customer;
    _description = description;
    _invoice = invoice;
    _lastPaymentError = lastPaymentError;
    _latestCharge = latestCharge;
    _livemode = livemode;
    _metadata = metadata;
    _nextAction = nextAction;
    _onBehalfOf = onBehalfOf;
    _paymentMethod = paymentMethod;
    _paymentMethodConfigurationDetails = paymentMethodConfigurationDetails;
    _paymentMethodOptions = paymentMethodOptions;
    _paymentMethodTypes = paymentMethodTypes;
    _processing = processing;
    _receiptEmail = receiptEmail;
    _review = review;
    _setupFutureUsage = setupFutureUsage;
    _shipping = shipping;
    _statementDescriptor = statementDescriptor;
    _statementDescriptorSuffix = statementDescriptorSuffix;
    _status = status;
    _transferData = transferData;
    _transferGroup = transferGroup;
  }

  PaymentIntentModel.fromJson(dynamic json) {
    _id = json['id'];
    _object = json['object'];
    _amount = json['amount'];
    _amountCapturable = json['amount_capturable'];
    _amountDetails = json['amount_details'] != null ? AmountDetails.fromJson(json['amount_details']) : null;
    _amountReceived = json['amount_received'];
    _application = json['application'];
    _applicationFeeAmount = json['application_fee_amount'];
    _automaticPaymentMethods = json['automatic_payment_methods'] != null ? AutomaticPaymentMethods.fromJson(json['automatic_payment_methods']) : null;
    _canceledAt = json['canceled_at'];
    _cancellationReason = json['cancellation_reason'];
    _captureMethod = json['capture_method'];
    _clientSecret = json['client_secret'];
    _confirmationMethod = json['confirmation_method'];
    _created = json['created'];
    _currency = json['currency'];
    _customer = json['customer'];
    _description = json['description'];
    _invoice = json['invoice'];
    _lastPaymentError = json['last_payment_error'];
    _latestCharge = json['latest_charge'];
    _livemode = json['livemode'];
    _metadata = json['metadata'];
    _nextAction = json['next_action'];
    _onBehalfOf = json['on_behalf_of'];
    _paymentMethod = json['payment_method'];
    _paymentMethodConfigurationDetails = json['payment_method_configuration_details'];
    _paymentMethodOptions = json['payment_method_options'] != null ? PaymentMethodOptions.fromJson(json['payment_method_options']) : null;
    _paymentMethodTypes = json['payment_method_types'] != null ? json['payment_method_types'].cast<String>() : [];
    _processing = json['processing'];
    _receiptEmail = json['receipt_email'];
    _review = json['review'];
    _setupFutureUsage = json['setup_future_usage'];
    _shipping = json['shipping'];
    _statementDescriptor = json['statement_descriptor'];
    _statementDescriptorSuffix = json['statement_descriptor_suffix'];
    _status = json['status'];
    _transferData = json['transfer_data'];
    _transferGroup = json['transfer_group'];
  }
  String? _id;
  String? _object;
  int? _amount;
  int? _amountCapturable;
  AmountDetails? _amountDetails;
  int? _amountReceived;
  dynamic _application;
  dynamic _applicationFeeAmount;
  AutomaticPaymentMethods? _automaticPaymentMethods;
  dynamic _canceledAt;
  dynamic _cancellationReason;
  String? _captureMethod;
  String? _clientSecret;
  String? _confirmationMethod;
  int? _created;
  String? _currency;
  dynamic _customer;
  String? _description;
  dynamic _invoice;
  dynamic _lastPaymentError;
  dynamic _latestCharge;
  bool? _livemode;
  dynamic _metadata;
  dynamic _nextAction;
  dynamic _onBehalfOf;
  dynamic _paymentMethod;
  dynamic _paymentMethodConfigurationDetails;
  PaymentMethodOptions? _paymentMethodOptions;
  List<String>? _paymentMethodTypes;
  dynamic _processing;
  dynamic _receiptEmail;
  dynamic _review;
  dynamic _setupFutureUsage;
  dynamic _shipping;
  dynamic _statementDescriptor;
  dynamic _statementDescriptorSuffix;
  String? _status;
  dynamic _transferData;
  dynamic _transferGroup;

  String? get id => _id;
  String? get object => _object;
  int? get amount => _amount;
  int? get amountCapturable => _amountCapturable;
  AmountDetails? get amountDetails => _amountDetails;
  int? get amountReceived => _amountReceived;
  dynamic get application => _application;
  dynamic get applicationFeeAmount => _applicationFeeAmount;
  AutomaticPaymentMethods? get automaticPaymentMethods => _automaticPaymentMethods;
  dynamic get canceledAt => _canceledAt;
  dynamic get cancellationReason => _cancellationReason;
  String? get captureMethod => _captureMethod;
  String? get clientSecret => _clientSecret;
  String? get confirmationMethod => _confirmationMethod;
  int? get created => _created;
  String? get currency => _currency;
  dynamic get customer => _customer;
  String? get description => _description;
  dynamic get invoice => _invoice;
  dynamic get lastPaymentError => _lastPaymentError;
  dynamic get latestCharge => _latestCharge;
  bool? get livemode => _livemode;
  dynamic get metadata => _metadata;
  dynamic get nextAction => _nextAction;
  dynamic get onBehalfOf => _onBehalfOf;
  dynamic get paymentMethod => _paymentMethod;
  dynamic get paymentMethodConfigurationDetails => _paymentMethodConfigurationDetails;
  PaymentMethodOptions? get paymentMethodOptions => _paymentMethodOptions;
  List<String>? get paymentMethodTypes => _paymentMethodTypes;
  dynamic get processing => _processing;
  dynamic get receiptEmail => _receiptEmail;
  dynamic get review => _review;
  dynamic get setupFutureUsage => _setupFutureUsage;
  dynamic get shipping => _shipping;
  dynamic get statementDescriptor => _statementDescriptor;
  dynamic get statementDescriptorSuffix => _statementDescriptorSuffix;
  String? get status => _status;
  dynamic get transferData => _transferData;
  dynamic get transferGroup => _transferGroup;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['object'] = _object;
    map['amount'] = _amount;
    map['amount_capturable'] = _amountCapturable;
    if (_amountDetails != null) {
      map['amount_details'] = _amountDetails?.toJson();
    }
    map['amount_received'] = _amountReceived;
    map['application'] = _application;
    map['application_fee_amount'] = _applicationFeeAmount;
    if (_automaticPaymentMethods != null) {
      map['automatic_payment_methods'] = _automaticPaymentMethods?.toJson();
    }
    map['canceled_at'] = _canceledAt;
    map['cancellation_reason'] = _cancellationReason;
    map['capture_method'] = _captureMethod;
    map['client_secret'] = _clientSecret;
    map['confirmation_method'] = _confirmationMethod;
    map['created'] = _created;
    map['currency'] = _currency;
    map['customer'] = _customer;
    map['description'] = _description;
    map['invoice'] = _invoice;
    map['last_payment_error'] = _lastPaymentError;
    map['latest_charge'] = _latestCharge;
    map['livemode'] = _livemode;
    map['metadata'] = _metadata;
    map['next_action'] = _nextAction;
    map['on_behalf_of'] = _onBehalfOf;
    map['payment_method'] = _paymentMethod;
    map['payment_method_configuration_details'] = _paymentMethodConfigurationDetails;
    if (_paymentMethodOptions != null) {
      map['payment_method_options'] = _paymentMethodOptions?.toJson();
    }
    map['payment_method_types'] = _paymentMethodTypes;
    map['processing'] = _processing;
    map['receipt_email'] = _receiptEmail;
    map['review'] = _review;
    map['setup_future_usage'] = _setupFutureUsage;
    map['shipping'] = _shipping;
    map['statement_descriptor'] = _statementDescriptor;
    map['statement_descriptor_suffix'] = _statementDescriptorSuffix;
    map['status'] = _status;
    map['transfer_data'] = _transferData;
    map['transfer_group'] = _transferGroup;
    return map;
  }

}

/// card : {"installments":null,"mandate_options":null,"network":null,"request_three_d_secure":"automatic"}

class PaymentMethodOptions {
  PaymentMethodOptions({
    Card? card,}){
    _card = card;
  }

  PaymentMethodOptions.fromJson(dynamic json) {
    _card = json['card'] != null ? Card.fromJson(json['card']) : null;
  }
  Card? _card;

  Card? get card => _card;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_card != null) {
      map['card'] = _card?.toJson();
    }
    return map;
  }

}

/// installments : null
/// mandate_options : null
/// network : null
/// request_three_d_secure : "automatic"

class Card {
  Card({
    dynamic installments,
    dynamic mandateOptions,
    dynamic network,
    String? requestThreeDSecure,}){
    _installments = installments;
    _mandateOptions = mandateOptions;
    _network = network;
    _requestThreeDSecure = requestThreeDSecure;
  }

  Card.fromJson(dynamic json) {
    _installments = json['installments'];
    _mandateOptions = json['mandate_options'];
    _network = json['network'];
    _requestThreeDSecure = json['request_three_d_secure'];
  }
  dynamic _installments;
  dynamic _mandateOptions;
  dynamic _network;
  String? _requestThreeDSecure;

  dynamic get installments => _installments;
  dynamic get mandateOptions => _mandateOptions;
  dynamic get network => _network;
  String? get requestThreeDSecure => _requestThreeDSecure;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['installments'] = _installments;
    map['mandate_options'] = _mandateOptions;
    map['network'] = _network;
    map['request_three_d_secure'] = _requestThreeDSecure;
    return map;
  }

}

/// enabled : true

class AutomaticPaymentMethods {
  AutomaticPaymentMethods({
    bool? enabled,}){
    _enabled = enabled;
  }

  AutomaticPaymentMethods.fromJson(dynamic json) {
    _enabled = json['enabled'];
  }
  bool? _enabled;

  bool? get enabled => _enabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['enabled'] = _enabled;
    return map;
  }

}

/// tip : {}

class AmountDetails {
  AmountDetails({
    dynamic tip,}){
    _tip = tip;
  }

  AmountDetails.fromJson(dynamic json) {
    _tip = json['tip'];
  }
  dynamic _tip;

  dynamic get tip => _tip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tip'] = _tip;
    return map;
  }

}