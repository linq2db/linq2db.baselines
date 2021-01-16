BeforeExecute
-- Firebird

CREATE TABLE Card
(
	Id       Int                                    NOT NULL,
	CardName VarChar(255) CHARACTER SET UNICODE_FSS,
	OwnerId  Int                                    NOT NULL
)

BeforeExecute
-- Firebird

CREATE TABLE Client
(
	Id   Int                                    NOT NULL,
	Name VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

DROP TABLE Client

BeforeExecute
-- Firebird

DROP TABLE Card

