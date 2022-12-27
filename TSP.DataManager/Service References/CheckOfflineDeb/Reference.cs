﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TSP.DataManager.CheckOfflineDeb {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="CheckOfflineDeb.CheckOfflineDebtSoap")]
    public interface CheckOfflineDebtSoap {
        
        // CODEGEN: Generating message contract since message GetSumDebtRequest has headers
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetSumDebt", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        TSP.DataManager.CheckOfflineDeb.GetSumDebtResponse GetSumDebt(TSP.DataManager.CheckOfflineDeb.GetSumDebtRequest request);
        
        // CODEGEN: Generating message contract since message AddPaymentRequest has headers
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/AddPayment", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        TSP.DataManager.CheckOfflineDeb.AddPaymentResponse AddPayment(TSP.DataManager.CheckOfflineDeb.AddPaymentRequest request);
        
        // CODEGEN: Generating message contract since message UpdatePaymentRequest has headers
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/UpdatePayment", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        TSP.DataManager.CheckOfflineDeb.UpdatePaymentResponse UpdatePayment(TSP.DataManager.CheckOfflineDeb.UpdatePaymentRequest request);
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.8.3752.0")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class AuthSoapHd : object, System.ComponentModel.INotifyPropertyChanged {
        
        private string strUserNameField;
        
        private string strPasswordField;
        
        private System.Xml.XmlAttribute[] anyAttrField;
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=0)]
        public string strUserName {
            get {
                return this.strUserNameField;
            }
            set {
                this.strUserNameField = value;
                this.RaisePropertyChanged("strUserName");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlElementAttribute(Order=1)]
        public string strPassword {
            get {
                return this.strPasswordField;
            }
            set {
                this.strPasswordField = value;
                this.RaisePropertyChanged("strPassword");
            }
        }
        
        /// <remarks/>
        [System.Xml.Serialization.XmlAnyAttributeAttribute()]
        public System.Xml.XmlAttribute[] AnyAttr {
            get {
                return this.anyAttrField;
            }
            set {
                this.anyAttrField = value;
                this.RaisePropertyChanged("AnyAttr");
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="GetSumDebt", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class GetSumDebtRequest {
        
        [System.ServiceModel.MessageHeaderAttribute(Namespace="http://tempuri.org/")]
        public TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string memCode;
        
        public GetSumDebtRequest() {
        }
        
        public GetSumDebtRequest(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string memCode) {
            this.AuthSoapHd = AuthSoapHd;
            this.memCode = memCode;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="GetSumDebtResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class GetSumDebtResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string GetSumDebtResult;
        
        public GetSumDebtResponse() {
        }
        
        public GetSumDebtResponse(string GetSumDebtResult) {
            this.GetSumDebtResult = GetSumDebtResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="AddPayment", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class AddPaymentRequest {
        
        [System.ServiceModel.MessageHeaderAttribute(Namespace="http://tempuri.org/")]
        public TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string memCode;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public string firstName;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public string lastName;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=3)]
        public string amount;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=4)]
        public string paymentId;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=5)]
        public System.DateTime PaymentDate;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=6)]
        public string refId;
        
        public AddPaymentRequest() {
        }
        
        public AddPaymentRequest(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string memCode, string firstName, string lastName, string amount, string paymentId, System.DateTime PaymentDate, string refId) {
            this.AuthSoapHd = AuthSoapHd;
            this.memCode = memCode;
            this.firstName = firstName;
            this.lastName = lastName;
            this.amount = amount;
            this.paymentId = paymentId;
            this.PaymentDate = PaymentDate;
            this.refId = refId;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="AddPaymentResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class AddPaymentResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string AddPaymentResult;
        
        public AddPaymentResponse() {
        }
        
        public AddPaymentResponse(string AddPaymentResult) {
            this.AddPaymentResult = AddPaymentResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="UpdatePayment", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class UpdatePaymentRequest {
        
        [System.ServiceModel.MessageHeaderAttribute(Namespace="http://tempuri.org/")]
        public TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string id;
        
        public UpdatePaymentRequest() {
        }
        
        public UpdatePaymentRequest(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string id) {
            this.AuthSoapHd = AuthSoapHd;
            this.id = id;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(WrapperName="UpdatePaymentResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class UpdatePaymentResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string UpdatePaymentResult;
        
        public UpdatePaymentResponse() {
        }
        
        public UpdatePaymentResponse(string UpdatePaymentResult) {
            this.UpdatePaymentResult = UpdatePaymentResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface CheckOfflineDebtSoapChannel : TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CheckOfflineDebtSoapClient : System.ServiceModel.ClientBase<TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap>, TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap {
        
        public CheckOfflineDebtSoapClient() {
        }
        
        public CheckOfflineDebtSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public CheckOfflineDebtSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CheckOfflineDebtSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CheckOfflineDebtSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        TSP.DataManager.CheckOfflineDeb.GetSumDebtResponse TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap.GetSumDebt(TSP.DataManager.CheckOfflineDeb.GetSumDebtRequest request) {
            return base.Channel.GetSumDebt(request);
        }
        
        public string GetSumDebt(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string memCode) {
            TSP.DataManager.CheckOfflineDeb.GetSumDebtRequest inValue = new TSP.DataManager.CheckOfflineDeb.GetSumDebtRequest();
            inValue.AuthSoapHd = AuthSoapHd;
            inValue.memCode = memCode;
            TSP.DataManager.CheckOfflineDeb.GetSumDebtResponse retVal = ((TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap)(this)).GetSumDebt(inValue);
            return retVal.GetSumDebtResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        TSP.DataManager.CheckOfflineDeb.AddPaymentResponse TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap.AddPayment(TSP.DataManager.CheckOfflineDeb.AddPaymentRequest request) {
            return base.Channel.AddPayment(request);
        }
        
        public string AddPayment(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string memCode, string firstName, string lastName, string amount, string paymentId, System.DateTime PaymentDate, string refId) {
            TSP.DataManager.CheckOfflineDeb.AddPaymentRequest inValue = new TSP.DataManager.CheckOfflineDeb.AddPaymentRequest();
            inValue.AuthSoapHd = AuthSoapHd;
            inValue.memCode = memCode;
            inValue.firstName = firstName;
            inValue.lastName = lastName;
            inValue.amount = amount;
            inValue.paymentId = paymentId;
            inValue.PaymentDate = PaymentDate;
            inValue.refId = refId;
            TSP.DataManager.CheckOfflineDeb.AddPaymentResponse retVal = ((TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap)(this)).AddPayment(inValue);
            return retVal.AddPaymentResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        TSP.DataManager.CheckOfflineDeb.UpdatePaymentResponse TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap.UpdatePayment(TSP.DataManager.CheckOfflineDeb.UpdatePaymentRequest request) {
            return base.Channel.UpdatePayment(request);
        }
        
        public string UpdatePayment(TSP.DataManager.CheckOfflineDeb.AuthSoapHd AuthSoapHd, string id) {
            TSP.DataManager.CheckOfflineDeb.UpdatePaymentRequest inValue = new TSP.DataManager.CheckOfflineDeb.UpdatePaymentRequest();
            inValue.AuthSoapHd = AuthSoapHd;
            inValue.id = id;
            TSP.DataManager.CheckOfflineDeb.UpdatePaymentResponse retVal = ((TSP.DataManager.CheckOfflineDeb.CheckOfflineDebtSoap)(this)).UpdatePayment(inValue);
            return retVal.UpdatePaymentResult;
        }
    }
}
