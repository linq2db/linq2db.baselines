BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3834Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3834Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3834Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3834Table"
			(
				"Id"       Int                                    NOT NULL,
				"Nesto"    VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"Nest"     VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"WhatSov"  VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"Co2grund" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Co2aend"  VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue3834Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 123
DECLARE @Nesto VarChar(5) -- String
SET     @Nesto = 'Nesto'
DECLARE @Nest VarChar(6) -- String
SET     @Nest = 'Nessss'
DECLARE @Whatsov VarChar(7) -- String
SET     @Whatsov = 'Whatsov'
DECLARE @Co2Grund VarChar(3) -- String
SET     @Co2Grund = 'xxx'
DECLARE @Co2Aend VarChar(4) -- String
SET     @Co2Aend = 'What'

INSERT INTO "Issue3834Table"
(
	"Id",
	"Nesto",
	"Nest",
	"WhatSov",
	"Co2grund",
	"Co2aend"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Nesto AS VARCHAR(5)),
	CAST(@Nest AS VARCHAR(6)),
	CAST(@Whatsov AS VARCHAR(7)),
	CAST(@Co2Grund AS VARCHAR(3)),
	CAST(@Co2Aend AS VARCHAR(4))
)
RETURNING
	"Issue3834Table"."Id",
	"Issue3834Table"."Nesto",
	"Issue3834Table"."Nest",
	"Issue3834Table"."WhatSov",
	"Issue3834Table"."Co2grund",
	"Issue3834Table"."Co2aend"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3834Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3834Table"';
END

