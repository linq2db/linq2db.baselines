BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3060Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3060Table"
(
	"Id"  BigInt        NOT NULL,
	"Uid" VarBinary(16)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Uid Binary(16)
SET     @Uid = x'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Id  -- Int64
SET     @Id = 0

UPDATE
	"Issue3060Table" "t1"
SET
	"Uid" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3060Table"

