import '../../data/models/PaymentIntentModel.dart';

class PaymentIntentEntity {
  PaymentIntentEntity({
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
    dynamic transferGroup,}) {
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
}