-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	1,
	2,
	3,
	4
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	2,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	3,
	5,
	6,
	7
)

-- ClickHouse.MySql ClickHouse
INSERT INTO TradeValid
(
	Id,
	DealNumber,
	ParcelGroupID,
	ParcelID
)
VALUES
(
	4,
	8,
	6,
	9
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	1,
	2,
	3,
	4,
	9,
	9,
	9
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	2,
	9,
	9,
	9,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	3,
	8,
	6,
	9,
	3,
	4,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO NominationValid
(
	Id,
	DeliveryDealNumber,
	DeliveryParcelGroup,
	DeliveryParcelID,
	ReceiptDealNumber,
	ReceiptParcelGroup,
	ReceiptParcelID
)
VALUES
(
	4,
	2,
	3,
	4,
	8,
	6,
	9
)

-- ClickHouse.MySql ClickHouse
SELECT
	after_1.Id,
	after_1.DealNumber,
	after_1.ParcelGroupID,
	after_1.ParcelID,
	x.Id,
	x.DeliveryDealNumber,
	x.DeliveryParcelGroup,
	x.DeliveryParcelID,
	x.ReceiptDealNumber,
	x.ReceiptParcelGroup,
	x.ReceiptParcelID,
	x_1.Id,
	x_1.DeliveryDealNumber,
	x_1.DeliveryParcelGroup,
	x_1.DeliveryParcelID,
	x_1.ReceiptDealNumber,
	x_1.ReceiptParcelGroup,
	x_1.ReceiptParcelID,
	arg4.Id,
	arg4.DealNumber,
	arg4.ParcelGroupID,
	arg4.ParcelID
FROM
	TradeValid after_1
		LEFT JOIN NominationValid x ON after_1.DealNumber = x.DeliveryDealNumber AND after_1.ParcelGroupID = x.DeliveryParcelGroup AND after_1.ParcelID = x.DeliveryParcelID
		LEFT JOIN NominationValid x_1 ON after_1.DealNumber = x_1.ReceiptDealNumber AND after_1.ParcelGroupID = x_1.ReceiptParcelGroup AND after_1.ParcelID = x_1.ReceiptParcelID
		LEFT JOIN TradeValid arg4 ON after_1.DealNumber = arg4.Id
ORDER BY
	after_1.Id
LIMIT 90

