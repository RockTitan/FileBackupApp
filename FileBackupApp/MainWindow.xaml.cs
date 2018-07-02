using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using System.Threading;
using Microsoft.Win32;
using System.IO;

namespace FileBackupApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        bool mainWindowLoaded = false;

        #region Events

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            mainWindowLoaded = true;
            languageChanged();
        }

        private void comboBoxLanguage_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (mainWindowLoaded == true)
            {
                languageChanged();
            }
        }

        private void TextBoxSource_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void TextBoxDesination_KeyDown(object sender, KeyEventArgs e)
        {

        }

        private void BtnSource_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog folderBrowserDialogSource = new System.Windows.Forms.FolderBrowserDialog();
            folderBrowserDialogSource.ShowDialog();
            TextBoxSource.Text = folderBrowserDialogSource.SelectedPath;

            //OpenFileDialog openFileDialog = new OpenFileDialog();
            //openFileDialog.Filter = "(*.*)|*.*";
            //openFileDialog.ShowDialog();
            //TextBoxSource.Text = System.IO.Path.GetFullPath(openFileDialog.FileName);
        }

        private void BtnDesination_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog folderBrowserDialogDesination = new System.Windows.Forms.FolderBrowserDialog();
            folderBrowserDialogDesination.ShowDialog();
            TextBoxDesination.Text = folderBrowserDialogDesination.SelectedPath;
        }

        private void BtnSourceBrowsePath_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnDesinationBrowsePath_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnStart_Click(object sender, RoutedEventArgs e)
        {
            for (int i = 0; i < 100; i++)
            {
                TimeSpan defaultTimeout = new TimeSpan(1000);
            }
        }

        private void BtnCloseMainWindow_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void topmostCheckBox_Checked(object sender, RoutedEventArgs e)
        {
            this.Topmost = true;
        }

        private void topmostCheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            this.Topmost = false;
        }

        #endregion


        #region Methods

        void languageChanged()
        {
            if (comboBoxLanguage.SelectedItem.ToString().Contains("English"))
            {
                LabelTopmost.Content = "Topmost";
                LabelLanguage.Content = "Language :";
                LabelSource.Content = "Source :";
                LabelDesination.Content = "Desination :";
                BtnSourceBrowsePath.Content = "Browse...";
                BtnDesinationBrowsePath.Content = "Browse...";
                BtnStart.Content = "Start";
                BtnCloseMainWindow.Content = "Close";
                rbMirror.Content = "Mirror";
                rbBackup.Content = "Backup";
                rbSynchronize.Content = "Synchronize";
            }
            else
            {
                LabelTopmost.Content = "最上層";
                LabelLanguage.Content = "語言 :";
                LabelSource.Content = "來源 :";
                LabelDesination.Content = "目標 :";
                BtnSourceBrowsePath.Content = "瀏覽...";
                BtnDesinationBrowsePath.Content = "瀏覽...";
                BtnStart.Content = "開始";
                BtnCloseMainWindow.Content = "關閉";
                rbMirror.Content = "鏡像";
                rbBackup.Content = "備份";
                rbSynchronize.Content = "同步";
            }
        }

        #endregion
    }
}
