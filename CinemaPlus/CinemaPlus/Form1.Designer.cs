namespace CinemaPlus
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvPosters = new System.Windows.Forms.DataGridView();
            this.Film = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Hall = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Watch = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Price = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dtPicker = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPosters)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvPosters
            // 
            this.dgvPosters.AllowUserToAddRows = false;
            this.dgvPosters.AllowUserToDeleteRows = false;
            this.dgvPosters.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvPosters.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPosters.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Film,
            this.Hall,
            this.Watch,
            this.Price});
            this.dgvPosters.Location = new System.Drawing.Point(13, 85);
            this.dgvPosters.Name = "dgvPosters";
            this.dgvPosters.ReadOnly = true;
            this.dgvPosters.Size = new System.Drawing.Size(877, 407);
            this.dgvPosters.TabIndex = 0;
            // 
            // Film
            // 
            this.Film.HeaderText = "Film";
            this.Film.Name = "Film";
            this.Film.ReadOnly = true;
            // 
            // Hall
            // 
            this.Hall.HeaderText = "Hall";
            this.Hall.Name = "Hall";
            this.Hall.ReadOnly = true;
            // 
            // Watch
            // 
            this.Watch.HeaderText = "Watch";
            this.Watch.Name = "Watch";
            this.Watch.ReadOnly = true;
            // 
            // Price
            // 
            this.Price.HeaderText = "Price";
            this.Price.Name = "Price";
            this.Price.ReadOnly = true;
            // 
            // dtPicker
            // 
            this.dtPicker.Location = new System.Drawing.Point(13, 31);
            this.dtPicker.Name = "dtPicker";
            this.dtPicker.Size = new System.Drawing.Size(200, 20);
            this.dtPicker.TabIndex = 1;
            this.dtPicker.ValueChanged += new System.EventHandler(this.ViewPosts);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(902, 504);
            this.Controls.Add(this.dtPicker);
            this.Controls.Add(this.dgvPosters);
            this.Name = "Form1";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dgvPosters)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvPosters;
        private System.Windows.Forms.DataGridViewTextBoxColumn Film;
        private System.Windows.Forms.DataGridViewTextBoxColumn Hall;
        private System.Windows.Forms.DataGridViewTextBoxColumn Watch;
        private System.Windows.Forms.DataGridViewTextBoxColumn Price;
        private System.Windows.Forms.DateTimePicker dtPicker;
    }
}

