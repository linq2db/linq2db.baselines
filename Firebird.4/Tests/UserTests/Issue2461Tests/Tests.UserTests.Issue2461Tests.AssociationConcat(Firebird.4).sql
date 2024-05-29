BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MRECEIPT')) THEN
		EXECUTE STATEMENT 'DROP TABLE MRECEIPT';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MRECEIPT')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE MRECEIPT
			(
				RECEIPT_NO VarChar(255) CHARACTER SET UNICODE_FSS,
				CUSTKEY    VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EXTERNAL_RECEIPTS')) THEN
		EXECUTE STATEMENT 'DROP TABLE EXTERNAL_RECEIPTS';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EXTERNAL_RECEIPTS')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE EXTERNAL_RECEIPTS
			(
				RECEIPT_NO VarChar(255) CHARACTER SET UNICODE_FSS,
				CUSTKEY    VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CUST_DTL')) THEN
		EXECUTE STATEMENT 'DROP TABLE CUST_DTL';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CUST_DTL')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE CUST_DTL
			(
				CUSTKEY   VarChar(255) CHARACTER SET UNICODE_FSS,
				BILLGROUP VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"i_1"."ReceiptNo",
	"a_Customer".BILLGROUP
FROM
	(
		SELECT
			"i".RECEIPT_NO as "ReceiptNo",
			"i".CUSTKEY as "Custkey"
		FROM
			MRECEIPT "i"
		UNION ALL
		SELECT
			"t1".RECEIPT_NO as "ReceiptNo",
			"t1".CUSTKEY as "Custkey"
		FROM
			EXTERNAL_RECEIPTS "t1"
	) "i_1"
		LEFT JOIN CUST_DTL "a_Customer" ON ("i_1"."Custkey" = "a_Customer".CUSTKEY OR "i_1"."Custkey" IS NULL AND "a_Customer".CUSTKEY IS NULL)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CUST_DTL')) THEN
		EXECUTE STATEMENT 'DROP TABLE CUST_DTL';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EXTERNAL_RECEIPTS')) THEN
		EXECUTE STATEMENT 'DROP TABLE EXTERNAL_RECEIPTS';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MRECEIPT')) THEN
		EXECUTE STATEMENT 'DROP TABLE MRECEIPT';
END

