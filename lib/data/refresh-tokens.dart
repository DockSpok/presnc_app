//migrationBuilder.CreateTable(
//name: "RefreshTokens",
//columns: table => new
//{
//Token = table.Column<string>(nullable: false),
//JwtId = table.Column<string>(nullable: true),
//DataCriacao = table.Column<DateTime>(nullable: false),
//DataExpiracao = table.Column<DateTime>(nullable: false),
//Usado = table.Column<bool>(nullable: false),
//NaoValidado = table.Column<bool>(nullable: false),
//UserId = table.Column<string>(nullable: true)
//},
//constraints: table =>
//{
//table.PrimaryKey("PK_RefreshTokens", x => x.Token);
//table.ForeignKey(
//name: "FK_RefreshTokens_AspNetUsers_UserId",
//column: x => x.UserId,
//principalTable: "AspNetUsers",
//principalColumn: "Id",
//onDelete: ReferentialAction.Restrict);
//});