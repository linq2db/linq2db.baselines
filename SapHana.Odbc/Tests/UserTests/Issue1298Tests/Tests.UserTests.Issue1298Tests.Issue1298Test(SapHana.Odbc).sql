BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id BigInt -- Int64
SET     @Id = 1
DECLARE @asdfgh NVarChar(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO "qwerty"
(
	"Id",
	"asdfgh"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id BigInt -- Int64
SET     @Id = 100500
DECLARE @asdfgh NVarChar(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO "qwerty"
(
	"Id",
	"asdfgh"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1 BigInt -- Int64
SET     @ref1 = 100500
DECLARE @y1_q1_ref1 BigInt -- Int64
SET     @y1_q1_ref1 = 100500

INSERT INTO "mega_composites"
(
	"ref1",
	"y1.q1.ref1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1 BigInt -- Int64
SET     @ref1 = 1
DECLARE @y1_q1_ref1 BigInt -- Int64
SET     @y1_q1_ref1 = 100500

INSERT INTO "mega_composites"
(
	"ref1",
	"y1.q1.ref1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1 BigInt -- Int64
SET     @ref1 = 100500
DECLARE @y1_q1_ref1 BigInt -- Int64
SET     @y1_q1_ref1 = 1

INSERT INTO "mega_composites"
(
	"ref1",
	"y1.q1.ref1"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	"x"."ref1",
	"t1"."face_ref1"
FROM
	"mega_composites" "x"
		LEFT JOIN LATERAL (
			SELECT
				"q"."asdfgh" as "face_ref1"
			FROM
				"qwerty" "q"
			WHERE
				"q"."Id" = "x"."ref1"
			LIMIT 1
		) "t1" ON 1=1
LIMIT ?

BeforeExecute
DisposeTransaction
