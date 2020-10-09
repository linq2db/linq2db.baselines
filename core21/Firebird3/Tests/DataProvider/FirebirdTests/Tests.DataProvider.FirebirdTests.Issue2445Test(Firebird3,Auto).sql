BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Card"
(
	"Id"       Int                                    NOT NULL,
	"CardName" VarChar(255) CHARACTER SET UNICODE_FSS,
	"OwnerId"  Int                                    NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Client"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."Id", 
	"t1"."CardName", 
	"t1"."OwnerId", 
	"a_Owner"."Id", 
	"a_Owner"."Name", 
	"a_Owner"."cnt"
FROM
	"Card" "t1"
		LEFT JOIN ( 
			SELECT 
				"cl"."Id", 
				"cl"."Name", 
				(
					SELECT 
						Count(*)
					FROM
						"Card" "t"
					WHERE
						"t"."OwnerId" = "cl"."Id"
				) as "cnt"
			FROM
				"Client" "cl"
		) "a_Owner" ON "a_Owner"."Id" = "t1"."OwnerId"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Client"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Card"

