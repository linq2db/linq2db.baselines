BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CARD')) THEN
		EXECUTE STATEMENT 'DROP TABLE Card';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CARD')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE Card
			(
				Id       Int                                    NOT NULL,
				CardName VarChar(255) CHARACTER SET UNICODE_FSS,
				OwnerId  Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CLIENT')) THEN
		EXECUTE STATEMENT 'DROP TABLE Client';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CLIENT')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE Client
			(
				Id   Int                                    NOT NULL,
				Name VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	t2.Id,
	t2.CardName,
	t2.OwnerId,
	t1.Id,
	t1.Name,
	t1.CountOfTCards
FROM
	Card t2
		LEFT JOIN (
			SELECT
				a_Owner.Id,
				a_Owner.Name,
				(
					SELECT
						COUNT(*)
					FROM
						Card t
					WHERE
						t.OwnerId = a_Owner.Id
				) as CountOfTCards,
				a_Owner.Id as Id_1
			FROM
				Client a_Owner
		) t1 ON t1.Id_1 = t2.OwnerId

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CLIENT')) THEN
		EXECUTE STATEMENT 'DROP TABLE Client';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CARD')) THEN
		EXECUTE STATEMENT 'DROP TABLE Card';
END

