﻿BeforeExecute
-- Firebird

CREATE TABLE "Card"
(
	"Id"       Int                                    NOT NULL,
	"CardName" VarChar(255) CHARACTER SET UNICODE_FSS,
	"OwnerId"  Int                                    NOT NULL
)

BeforeExecute
-- Firebird

CREATE TABLE "Client"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."CardName",
	"t1"."OwnerId",
	"a_Owner"."Id",
	"a_Owner"."Name",
	"a_Owner"."CountOfTCards"
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
				) as "CountOfTCards"
			FROM
				"Client" "cl"
		) "a_Owner" ON "a_Owner"."Id" = "t1"."OwnerId"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Client"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Card')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Card"';
END

