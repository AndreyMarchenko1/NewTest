﻿#pragma checksum "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "9413A7D60652A2625AC9410FC2F33B39BE089E636C38A459C0C62A1387469ECD"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using DIary1.Views.Pages.Auth;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace DIary1.Views.Pages.Auth {
    
    
    /// <summary>
    /// SignIn
    /// </summary>
    public partial class SignIn : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TBlockHeading;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TBoxUserName;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.PasswordBox PBoxPassword;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnEnter;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Documents.Hyperlink HLinkRegist;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DIary1;component/views/pages/auth/signin.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TBlockHeading = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.TBoxUserName = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.PBoxPassword = ((System.Windows.Controls.PasswordBox)(target));
            return;
            case 4:
            this.BtnEnter = ((System.Windows.Controls.Button)(target));
            
            #line 28 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
            this.BtnEnter.Click += new System.Windows.RoutedEventHandler(this.BtnEnter_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.HLinkRegist = ((System.Windows.Documents.Hyperlink)(target));
            
            #line 31 "..\..\..\..\..\Views\Pages\Auth\SignIn.xaml"
            this.HLinkRegist.Click += new System.Windows.RoutedEventHandler(this.HLinkRegistClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

