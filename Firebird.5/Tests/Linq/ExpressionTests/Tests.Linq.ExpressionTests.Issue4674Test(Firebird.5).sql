BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4674StockItem"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockItem')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4674StockItem"
			(
				"TenantId"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Code"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"Description" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockRoomItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4674StockRoomItem"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockRoomItem')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4674StockRoomItem"
			(
				"TenantId"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"StockroomCode" VarChar(255) CHARACTER SET UNICODE_FSS,
				"ItemCode"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"Quantity"      Decimal(18, 10)                        NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockRoomItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4674StockRoomItem"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4674StockItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4674StockItem"';
END

