﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [RateEntry]
(
	[TI_PK]                                Guid          NOT NULL,
	[TI_LineOrder]                         SmallInt      NOT NULL,
	[TI_RateStartDate]                     DateTime2     NOT NULL,
	[TI_RateEndDate]                       DateTime2         NULL,
	[TI_RX_NKCurrency]                     NVarChar(255)     NULL,
	[TI_Frequency]                         INTEGER       NOT NULL,
	[TI_OH_Supplier]                       Guid              NULL,
	[TI_OH_TransportProvider]              Guid              NULL,
	[TI_OH_Consignor]                      Guid              NULL,
	[TI_OH_Consignee]                      Guid              NULL,
	[TI_OA_CartagePickupAddressOverride]   Guid              NULL,
	[TI_OA_CartageDeliveryAddressOverride] Guid              NULL,
	[TI_CartagePickupAddressPostCode]      NVarChar(255)     NULL,
	[TI_CartageDeliveryAddressPostCode]    NVarChar(255)     NULL,
	[TI_RS_NKServiceLevel_NI]              NVarChar(255)     NULL,
	[TI_OriginLRC]                         NVarChar(255)     NULL,
	[TI_DestinationLRC]                    NVarChar(255)     NULL,
	[TI_ViaLRC]                            NVarChar(255)     NULL,
	[TI_PageHeading]                       NVarChar(255)     NULL,
	[TI_PageOpeningText]                   NVarChar(255)     NULL,
	[TI_PageClosingText]                   NVarChar(255)     NULL,
	[TI_OH_AgentOverride]                  Guid              NULL,
	[TI_ParentID]                          Guid              NULL,
	[TI_QuotePageIncoTerm]                 NVarChar(255)     NULL,
	[TI_BuyersConsolRateMode]              NVarChar(255)     NULL,
	[TI_SystemCreateTimeUtc]               DateTime2         NULL,
	[TI_SystemCreateUser]                  NVarChar(255)     NULL,
	[TI_SystemLastEditTimeUtc]             DateTime2         NULL,
	[TI_SystemLastEditUser]                NVarChar(255)     NULL,
	[TI_TH]                                Guid          NOT NULL,
	[TI_RC]                                Guid              NULL,
	[TI_ContractNumber]                    NVarChar(255)     NULL,
	[TI_PL_NKCarrierServiceLevel]          NVarChar(255)     NULL,
	[TI_TZ_OriginZone]                     Guid              NULL,
	[TI_TZ_DestinationZone]                Guid              NULL,
	[TI_IsValid]                           Bit           NOT NULL,
	[TI_IsCrossTrade]                      Bit           NOT NULL,
	[TI_DataChecked]                       Bit           NOT NULL,
	[TI_MatchContainerRateClass]           Bit           NOT NULL,
	[TI_TransitTime]                       NVarChar(255)     NULL,
	[TI_FrequencyUnit]                     NVarChar(255)     NULL,
	[TI_Mode]                              NVarChar(255)     NULL,
	[TI_RH_NKCommodityCode]                NVarChar(255)     NULL,
	[TI_RateCategory]                      NVarChar(255)     NULL,
	[TI_FromID]                            Guid              NULL,
	[TI_FromTableCode]                     NVarChar(255)     NULL,
	[TI_ToId]                              Guid              NULL,
	[TI_ToTableCode]                       NVarChar(255)     NULL,
	[TI_OH_ControllingCustomer]            Guid              NULL,
	[TI_GC_Publisher]                      Guid          NOT NULL,
	[TI_IsTact]                            Bit           NOT NULL,
	[TI_ParentTableCode]                   NVarChar(255)     NULL,
	[TI_RateKey]                           INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [RateLines]
(
	[TL_PK] Guid NOT NULL,
	[TL_TI] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [RateLineItem]
(
	[TM_PK]        Guid          NOT NULL,
	[TM_LineOrder] TinyInt       NOT NULL,
	[TM_Type]      NVarChar(255)     NULL,
	[TM_Value]     Decimal       NOT NULL,
	[TM_TL]        Guid          NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

WITH [rateCost]
(
	[RateEntry_TI_PK],
	[rateEntry],
	[rateEntry_1],
	[rateEntry_2],
	[rateEntry_3],
	[rateEntry_4],
	[rateEntry_5],
	[rateEntry_6],
	[rateEntry_7],
	[rateEntry_8],
	[rateEntry_9],
	[rateEntry_10],
	[rateEntry_11],
	[rateEntry_12],
	[rateEntry_13],
	[rateEntry_14],
	[rateEntry_15],
	[rateEntry_16],
	[rateEntry_17],
	[rateEntry_18],
	[rateEntry_19],
	[rateEntry_20],
	[rateEntry_21],
	[rateEntry_22],
	[rateEntry_23],
	[rateEntry_24],
	[rateEntry_25],
	[rateEntry_26],
	[rateEntry_27],
	[rateEntry_28],
	[rateEntry_29],
	[rateEntry_30],
	[rateEntry_31],
	[rateEntry_32],
	[rateEntry_33],
	[rateEntry_34],
	[rateEntry_35],
	[rateEntry_36],
	[rateEntry_37],
	[rateEntry_38],
	[rateEntry_39],
	[rateEntry_40],
	[rateEntry_41],
	[rateEntry_42],
	[rateEntry_43],
	[rateEntry_44],
	[rateEntry_45],
	[rateEntry_46],
	[rateEntry_47],
	[rateEntry_48],
	[rateEntry_49],
	[rateEntry_50],
	[rateEntry_51],
	[FlatRate],
	[MinRate],
	[VariableRate]
)
AS
(
	SELECT
		[rateEntry_52].[TI_PK],
		[rateEntry_52].[TI_LineOrder],
		[rateEntry_52].[TI_RateStartDate],
		[rateEntry_52].[TI_RateEndDate],
		[rateEntry_52].[TI_RX_NKCurrency],
		[rateEntry_52].[TI_Frequency],
		[rateEntry_52].[TI_OH_Supplier],
		[rateEntry_52].[TI_OH_TransportProvider],
		[rateEntry_52].[TI_OH_Consignor],
		[rateEntry_52].[TI_OH_Consignee],
		[rateEntry_52].[TI_OA_CartagePickupAddressOverride],
		[rateEntry_52].[TI_OA_CartageDeliveryAddressOverride],
		[rateEntry_52].[TI_CartagePickupAddressPostCode],
		[rateEntry_52].[TI_CartageDeliveryAddressPostCode],
		[rateEntry_52].[TI_RS_NKServiceLevel_NI],
		[rateEntry_52].[TI_OriginLRC],
		[rateEntry_52].[TI_DestinationLRC],
		[rateEntry_52].[TI_ViaLRC],
		[rateEntry_52].[TI_PageHeading],
		[rateEntry_52].[TI_PageOpeningText],
		[rateEntry_52].[TI_PageClosingText],
		[rateEntry_52].[TI_OH_AgentOverride],
		[rateEntry_52].[TI_ParentID],
		[rateEntry_52].[TI_QuotePageIncoTerm],
		[rateEntry_52].[TI_BuyersConsolRateMode],
		[rateEntry_52].[TI_SystemCreateTimeUtc],
		[rateEntry_52].[TI_SystemCreateUser],
		[rateEntry_52].[TI_SystemLastEditTimeUtc],
		[rateEntry_52].[TI_SystemLastEditUser],
		[rateEntry_52].[TI_TH],
		[rateEntry_52].[TI_RC],
		[rateEntry_52].[TI_ContractNumber],
		[rateEntry_52].[TI_PL_NKCarrierServiceLevel],
		[rateEntry_52].[TI_TZ_OriginZone],
		[rateEntry_52].[TI_TZ_DestinationZone],
		[rateEntry_52].[TI_IsValid],
		[rateEntry_52].[TI_IsCrossTrade],
		[rateEntry_52].[TI_DataChecked],
		[rateEntry_52].[TI_MatchContainerRateClass],
		[rateEntry_52].[TI_TransitTime],
		[rateEntry_52].[TI_FrequencyUnit],
		[rateEntry_52].[TI_Mode],
		[rateEntry_52].[TI_RH_NKCommodityCode],
		[rateEntry_52].[TI_RateCategory],
		[rateEntry_52].[TI_FromID],
		[rateEntry_52].[TI_FromTableCode],
		[rateEntry_52].[TI_ToId],
		[rateEntry_52].[TI_ToTableCode],
		[rateEntry_52].[TI_OH_ControllingCustomer],
		[rateEntry_52].[TI_GC_Publisher],
		[rateEntry_52].[TI_IsTact],
		[rateEntry_52].[TI_ParentTableCode],
		[rateEntry_52].[TI_RateKey],
		Sum(CASE
			WHEN [items].[TM_Type] IN ('FLT', 'BAS')
				THEN [items].[TM_Value]
			ELSE 0
		END),
		Sum(CASE
			WHEN [items].[TM_Type] = 'MIN'
				THEN [items].[TM_Value]
			ELSE 0
		END),
		Sum(CASE
			WHEN [items].[TM_Type] = 'UNT'
				THEN [items].[TM_Value]
			ELSE 0
		END)
	FROM
		[RateEntry] [rateEntry_52]
			LEFT JOIN [RateLines] [lines] ON [lines].[TL_TI] = [rateEntry_52].[TI_PK]
			LEFT JOIN [RateLineItem] [items] ON [items].[TM_TL] = [lines].[TL_PK]
	WHERE
		([rateEntry_52].[TI_RateEndDate] IS NULL OR DateTime([rateEntry_52].[TI_RateEndDate]) > DateTime(CURRENT_TIMESTAMP)) AND
		[items].[TM_Type] IN ('MIN', 'FLT', 'BAS', 'UNT')
	GROUP BY
		[rateEntry_52].[TI_PK],
		[rateEntry_52].[TI_LineOrder],
		[rateEntry_52].[TI_RateStartDate],
		[rateEntry_52].[TI_RateEndDate],
		[rateEntry_52].[TI_RX_NKCurrency],
		[rateEntry_52].[TI_Frequency],
		[rateEntry_52].[TI_OH_Supplier],
		[rateEntry_52].[TI_OH_TransportProvider],
		[rateEntry_52].[TI_OH_Consignor],
		[rateEntry_52].[TI_OH_Consignee],
		[rateEntry_52].[TI_OA_CartagePickupAddressOverride],
		[rateEntry_52].[TI_OA_CartageDeliveryAddressOverride],
		[rateEntry_52].[TI_CartagePickupAddressPostCode],
		[rateEntry_52].[TI_CartageDeliveryAddressPostCode],
		[rateEntry_52].[TI_RS_NKServiceLevel_NI],
		[rateEntry_52].[TI_OriginLRC],
		[rateEntry_52].[TI_DestinationLRC],
		[rateEntry_52].[TI_ViaLRC],
		[rateEntry_52].[TI_PageHeading],
		[rateEntry_52].[TI_PageOpeningText],
		[rateEntry_52].[TI_PageClosingText],
		[rateEntry_52].[TI_OH_AgentOverride],
		[rateEntry_52].[TI_ParentID],
		[rateEntry_52].[TI_QuotePageIncoTerm],
		[rateEntry_52].[TI_BuyersConsolRateMode],
		[rateEntry_52].[TI_SystemCreateTimeUtc],
		[rateEntry_52].[TI_SystemCreateUser],
		[rateEntry_52].[TI_SystemLastEditTimeUtc],
		[rateEntry_52].[TI_SystemLastEditUser],
		[rateEntry_52].[TI_TH],
		[rateEntry_52].[TI_RC],
		[rateEntry_52].[TI_ContractNumber],
		[rateEntry_52].[TI_PL_NKCarrierServiceLevel],
		[rateEntry_52].[TI_TZ_OriginZone],
		[rateEntry_52].[TI_TZ_DestinationZone],
		[rateEntry_52].[TI_IsValid],
		[rateEntry_52].[TI_IsCrossTrade],
		[rateEntry_52].[TI_DataChecked],
		[rateEntry_52].[TI_MatchContainerRateClass],
		[rateEntry_52].[TI_TransitTime],
		[rateEntry_52].[TI_FrequencyUnit],
		[rateEntry_52].[TI_Mode],
		[rateEntry_52].[TI_RH_NKCommodityCode],
		[rateEntry_52].[TI_RateCategory],
		[rateEntry_52].[TI_FromID],
		[rateEntry_52].[TI_FromTableCode],
		[rateEntry_52].[TI_ToId],
		[rateEntry_52].[TI_ToTableCode],
		[rateEntry_52].[TI_OH_ControllingCustomer],
		[rateEntry_52].[TI_GC_Publisher],
		[rateEntry_52].[TI_IsTact],
		[rateEntry_52].[TI_ParentTableCode],
		[rateEntry_52].[TI_RateKey]
)
SELECT
	[rateEntry_53].[TI_PK],
	[rateEntry_53].[TI_LineOrder],
	[rateEntry_53].[TI_RateStartDate],
	[rateEntry_53].[TI_RateEndDate],
	[rateEntry_53].[TI_RX_NKCurrency],
	[rateEntry_53].[TI_Frequency],
	[rateEntry_53].[TI_OH_Supplier],
	[rateEntry_53].[TI_OH_TransportProvider],
	[rateEntry_53].[TI_OH_Consignor],
	[rateEntry_53].[TI_OH_Consignee],
	[rateEntry_53].[TI_OA_CartagePickupAddressOverride],
	[rateEntry_53].[TI_OA_CartageDeliveryAddressOverride],
	[rateEntry_53].[TI_CartagePickupAddressPostCode],
	[rateEntry_53].[TI_CartageDeliveryAddressPostCode],
	[rateEntry_53].[TI_RS_NKServiceLevel_NI],
	[rateEntry_53].[TI_OriginLRC],
	[rateEntry_53].[TI_DestinationLRC],
	[rateEntry_53].[TI_ViaLRC],
	[rateEntry_53].[TI_PageHeading],
	[rateEntry_53].[TI_PageOpeningText],
	[rateEntry_53].[TI_PageClosingText],
	[rateEntry_53].[TI_OH_AgentOverride],
	[rateEntry_53].[TI_ParentID],
	[rateEntry_53].[TI_QuotePageIncoTerm],
	[rateEntry_53].[TI_BuyersConsolRateMode],
	[rateEntry_53].[TI_SystemCreateTimeUtc],
	[rateEntry_53].[TI_SystemCreateUser],
	[rateEntry_53].[TI_SystemLastEditTimeUtc],
	[rateEntry_53].[TI_SystemLastEditUser],
	[rateEntry_53].[TI_TH],
	[rateEntry_53].[TI_RC],
	[rateEntry_53].[TI_ContractNumber],
	[rateEntry_53].[TI_PL_NKCarrierServiceLevel],
	[rateEntry_53].[TI_TZ_OriginZone],
	[rateEntry_53].[TI_TZ_DestinationZone],
	[rateEntry_53].[TI_IsValid],
	[rateEntry_53].[TI_IsCrossTrade],
	[rateEntry_53].[TI_DataChecked],
	[rateEntry_53].[TI_MatchContainerRateClass],
	[rateEntry_53].[TI_TransitTime],
	[rateEntry_53].[TI_FrequencyUnit],
	[rateEntry_53].[TI_Mode],
	[rateEntry_53].[TI_RH_NKCommodityCode],
	[rateEntry_53].[TI_RateCategory],
	[rateEntry_53].[TI_FromID],
	[rateEntry_53].[TI_FromTableCode],
	[rateEntry_53].[TI_ToId],
	[rateEntry_53].[TI_ToTableCode],
	[rateEntry_53].[TI_OH_ControllingCustomer],
	[rateEntry_53].[TI_GC_Publisher],
	[rateEntry_53].[TI_IsTact],
	[rateEntry_53].[TI_ParentTableCode],
	[rateEntry_53].[TI_RateKey],
	[c_1].[RateEntry_TI_PK],
	[c_1].[rateEntry],
	[c_1].[rateEntry_1],
	[c_1].[rateEntry_2],
	[c_1].[rateEntry_3],
	[c_1].[rateEntry_4],
	[c_1].[rateEntry_5],
	[c_1].[rateEntry_6],
	[c_1].[rateEntry_7],
	[c_1].[rateEntry_8],
	[c_1].[rateEntry_9],
	[c_1].[rateEntry_10],
	[c_1].[rateEntry_11],
	[c_1].[rateEntry_12],
	[c_1].[rateEntry_13],
	[c_1].[rateEntry_14],
	[c_1].[rateEntry_15],
	[c_1].[rateEntry_16],
	[c_1].[rateEntry_17],
	[c_1].[rateEntry_18],
	[c_1].[rateEntry_19],
	[c_1].[rateEntry_20],
	[c_1].[rateEntry_21],
	[c_1].[rateEntry_22],
	[c_1].[rateEntry_23],
	[c_1].[rateEntry_24],
	[c_1].[rateEntry_25],
	[c_1].[rateEntry_26],
	[c_1].[rateEntry_27],
	[c_1].[rateEntry_28],
	[c_1].[rateEntry_29],
	[c_1].[rateEntry_30],
	[c_1].[rateEntry_31],
	[c_1].[rateEntry_32],
	[c_1].[rateEntry_33],
	[c_1].[rateEntry_34],
	[c_1].[rateEntry_35],
	[c_1].[rateEntry_36],
	[c_1].[rateEntry_37],
	[c_1].[rateEntry_38],
	[c_1].[rateEntry_39],
	[c_1].[rateEntry_40],
	[c_1].[rateEntry_41],
	[c_1].[rateEntry_42],
	[c_1].[rateEntry_43],
	[c_1].[rateEntry_44],
	[c_1].[rateEntry_45],
	[c_1].[rateEntry_46],
	[c_1].[rateEntry_47],
	[c_1].[rateEntry_48],
	[c_1].[rateEntry_49],
	[c_1].[rateEntry_50],
	[c_1].[rateEntry_51],
	[c_1].[FlatRate],
	[c_1].[MinRate],
	[c_1].[VariableRate]
FROM
	[RateEntry] [rateEntry_53]
		INNER JOIN [rateCost] [c_1] ON [c_1].[RateEntry_TI_PK] = [rateEntry_53].[TI_PK]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [RateLineItem]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [RateLines]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [RateEntry]

