abstract class StripeStates{}

class StripeInitialState extends StripeStates{}

class StripeSuccess extends StripeInitialState{}

class StripeFailed extends StripeInitialState{}

class StripeLoading extends StripeInitialState{}