-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DealNumber Int -- Int32
SET     @DealNumber = 2
DECLARE @ParcelGroupID Int -- Int32
SET     @ParcelGroupID = 3
DECLARE @ParcelID Int -- Int32
SET     @ParcelID = 4

INSERT INTO [TradeValid]
(
	[Id],
	[DealNumber],
	[ParcelGroupID],
	[ParcelID]
)
VALUES
(
	@Id,
	@DealNumber,
	@ParcelGroupID,
	@ParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DealNumber Int -- Int32
SET     @DealNumber = 3
DECLARE @ParcelGroupID Int -- Int32
SET     @ParcelGroupID = 4
DECLARE @ParcelID Int -- Int32
SET     @ParcelID = 5

INSERT INTO [TradeValid]
(
	[Id],
	[DealNumber],
	[ParcelGroupID],
	[ParcelID]
)
VALUES
(
	@Id,
	@DealNumber,
	@ParcelGroupID,
	@ParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DealNumber Int -- Int32
SET     @DealNumber = 5
DECLARE @ParcelGroupID Int -- Int32
SET     @ParcelGroupID = 6
DECLARE @ParcelID Int -- Int32
SET     @ParcelID = 7

INSERT INTO [TradeValid]
(
	[Id],
	[DealNumber],
	[ParcelGroupID],
	[ParcelID]
)
VALUES
(
	@Id,
	@DealNumber,
	@ParcelGroupID,
	@ParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @DealNumber Int -- Int32
SET     @DealNumber = 8
DECLARE @ParcelGroupID Int -- Int32
SET     @ParcelGroupID = 6
DECLARE @ParcelID Int -- Int32
SET     @ParcelID = 9

INSERT INTO [TradeValid]
(
	[Id],
	[DealNumber],
	[ParcelGroupID],
	[ParcelID]
)
VALUES
(
	@Id,
	@DealNumber,
	@ParcelGroupID,
	@ParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DeliveryDealNumber Int -- Int32
SET     @DeliveryDealNumber = 2
DECLARE @DeliveryParcelGroup Int -- Int32
SET     @DeliveryParcelGroup = 3
DECLARE @DeliveryParcelID Int -- Int32
SET     @DeliveryParcelID = 4
DECLARE @ReceiptDealNumber Int -- Int32
SET     @ReceiptDealNumber = 9
DECLARE @ReceiptParcelGroup Int -- Int32
SET     @ReceiptParcelGroup = 9
DECLARE @ReceiptParcelID Int -- Int32
SET     @ReceiptParcelID = 9

INSERT INTO [NominationValid]
(
	[Id],
	[DeliveryDealNumber],
	[DeliveryParcelGroup],
	[DeliveryParcelID],
	[ReceiptDealNumber],
	[ReceiptParcelGroup],
	[ReceiptParcelID]
)
VALUES
(
	@Id,
	@DeliveryDealNumber,
	@DeliveryParcelGroup,
	@DeliveryParcelID,
	@ReceiptDealNumber,
	@ReceiptParcelGroup,
	@ReceiptParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DeliveryDealNumber Int -- Int32
SET     @DeliveryDealNumber = 9
DECLARE @DeliveryParcelGroup Int -- Int32
SET     @DeliveryParcelGroup = 9
DECLARE @DeliveryParcelID Int -- Int32
SET     @DeliveryParcelID = 9
DECLARE @ReceiptDealNumber Int -- Int32
SET     @ReceiptDealNumber = 3
DECLARE @ReceiptParcelGroup Int -- Int32
SET     @ReceiptParcelGroup = 4
DECLARE @ReceiptParcelID Int -- Int32
SET     @ReceiptParcelID = 5

INSERT INTO [NominationValid]
(
	[Id],
	[DeliveryDealNumber],
	[DeliveryParcelGroup],
	[DeliveryParcelID],
	[ReceiptDealNumber],
	[ReceiptParcelGroup],
	[ReceiptParcelID]
)
VALUES
(
	@Id,
	@DeliveryDealNumber,
	@DeliveryParcelGroup,
	@DeliveryParcelID,
	@ReceiptDealNumber,
	@ReceiptParcelGroup,
	@ReceiptParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DeliveryDealNumber Int -- Int32
SET     @DeliveryDealNumber = 8
DECLARE @DeliveryParcelGroup Int -- Int32
SET     @DeliveryParcelGroup = 6
DECLARE @DeliveryParcelID Int -- Int32
SET     @DeliveryParcelID = 9
DECLARE @ReceiptDealNumber Int -- Int32
SET     @ReceiptDealNumber = 3
DECLARE @ReceiptParcelGroup Int -- Int32
SET     @ReceiptParcelGroup = 4
DECLARE @ReceiptParcelID Int -- Int32
SET     @ReceiptParcelID = 5

INSERT INTO [NominationValid]
(
	[Id],
	[DeliveryDealNumber],
	[DeliveryParcelGroup],
	[DeliveryParcelID],
	[ReceiptDealNumber],
	[ReceiptParcelGroup],
	[ReceiptParcelID]
)
VALUES
(
	@Id,
	@DeliveryDealNumber,
	@DeliveryParcelGroup,
	@DeliveryParcelID,
	@ReceiptDealNumber,
	@ReceiptParcelGroup,
	@ReceiptParcelID
)

-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @DeliveryDealNumber Int -- Int32
SET     @DeliveryDealNumber = 2
DECLARE @DeliveryParcelGroup Int -- Int32
SET     @DeliveryParcelGroup = 3
DECLARE @DeliveryParcelID Int -- Int32
SET     @DeliveryParcelID = 4
DECLARE @ReceiptDealNumber Int -- Int32
SET     @ReceiptDealNumber = 8
DECLARE @ReceiptParcelGroup Int -- Int32
SET     @ReceiptParcelGroup = 6
DECLARE @ReceiptParcelID Int -- Int32
SET     @ReceiptParcelID = 9

INSERT INTO [NominationValid]
(
	[Id],
	[DeliveryDealNumber],
	[DeliveryParcelGroup],
	[DeliveryParcelID],
	[ReceiptDealNumber],
	[ReceiptParcelGroup],
	[ReceiptParcelID]
)
VALUES
(
	@Id,
	@DeliveryDealNumber,
	@DeliveryParcelGroup,
	@DeliveryParcelID,
	@ReceiptDealNumber,
	@ReceiptParcelGroup,
	@ReceiptParcelID
)

-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 90

SELECT TOP (@take)
	[after_1].[Id],
	[after_1].[DealNumber],
	[after_1].[ParcelGroupID],
	[after_1].[ParcelID],
	[arg4].[Id],
	[arg4].[DeliveryDealNumber],
	[arg4].[DeliveryParcelGroup],
	[arg4].[DeliveryParcelID],
	[arg4].[ReceiptDealNumber],
	[arg4].[ReceiptParcelGroup],
	[arg4].[ReceiptParcelID],
	[arg2].[Id],
	[arg2].[DeliveryDealNumber],
	[arg2].[DeliveryParcelGroup],
	[arg2].[DeliveryParcelID],
	[arg2].[ReceiptDealNumber],
	[arg2].[ReceiptParcelGroup],
	[arg2].[ReceiptParcelID]
FROM
	[TradeValid] [after_1]
		LEFT JOIN [NominationValid] [arg2] ON [arg2].[ReceiptDealNumber] = [after_1].[DealNumber] AND [arg2].[ReceiptParcelGroup] = [after_1].[ParcelGroupID] AND [arg2].[ReceiptParcelID] = [after_1].[ParcelID]
		LEFT JOIN [NominationValid] [arg4] ON [after_1].[DealNumber] = [arg4].[DeliveryDealNumber] AND [after_1].[ParcelGroupID] = [arg4].[DeliveryParcelGroup] AND [after_1].[ParcelID] = [arg4].[DeliveryParcelID]
ORDER BY
	[after_1].[Id]

