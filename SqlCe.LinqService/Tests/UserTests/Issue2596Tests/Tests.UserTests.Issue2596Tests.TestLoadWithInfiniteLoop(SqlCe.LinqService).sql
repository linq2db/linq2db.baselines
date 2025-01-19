BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ProductUnitId],
	[d].[InvoiceId],
	[d].[ProductId],
	[a_ProductUnit].[Id] as [cond],
	[a_Product].[Id] as [cond_1]
FROM
	(
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
		LEFT JOIN [ProductUnit] [a_ProductUnit] ON [d].[ProductUnitId] = [a_ProductUnit].[Id]
		LEFT JOIN [Product] [a_Product] ON [d].[ProductId] = [a_Product].[Id]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[InvoiceId],
	[d].[TaxId],
	[a_Tax].[Id] as [Id_2]
FROM
	(
		SELECT DISTINCT
			[a_Invoice].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [InvoiceTaxLine] [d] ON [m_1].[Id] = [d].[InvoiceId]
		INNER JOIN [AccountTax] [a_Tax] ON [d].[TaxId] = [a_Tax].[Id]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [CustomInvoiceLine] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[CustomInvoiceId],
	[d].[MeasuresSourceId],
	[d].[PreviousSourceId],
	[a_Source].[Id] as [cond],
	[a_PreviousSource].[Id] as [cond_1]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeAMeasures] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]
		LEFT JOIN [MeasureSource] [a_Source] ON [d].[MeasuresSourceId] = [a_Source].[Id]
		LEFT JOIN [MeasureSource] [a_PreviousSource] ON [d].[PreviousSourceId] = [a_PreviousSource].[Id]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[CustomInvoiceId]
FROM
	(
		SELECT DISTINCT
			[f].[Id]
		FROM
			[CustomInvoice] [f]
				INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
				INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
				INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
				INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		WHERE
			[f].[Id] = 1
	) [m_1]
		INNER JOIN [TypeBMeasures] [d] ON [m_1].[Id] = [d].[CustomInvoiceId]

BeforeExecute
-- SqlCe

SELECT
	[f].[Id],
	[f].[ContractId],
	[f].[InvoiceId],
	[f].[ServicePointId],
	[f].[AccessTariffId],
	[f].[PriceListId],
	[a_Invoice].[Id] as [Id_1],
	[a_Invoice].[PendingStateId],
	[a_Invoice].[RectifyingInvoiceId],
	[a_Invoice].[RefundByInvoiceId],
	[a_Rectifying].[Id] as [Id_2],
	[a_Rectifying].[PendingStateId] as [PendingStateId_1],
	[a_Rectifying].[RectifyingInvoiceId] as [RectifyingInvoiceId_1],
	[a_Rectifying].[RefundByInvoiceId] as [RefundByInvoiceId_1],
	[a_RefundBy].[Id] as [Id_3],
	[a_RefundBy].[PendingStateId] as [PendingStateId_2],
	[a_RefundBy].[RectifyingInvoiceId] as [RectifyingInvoiceId_2],
	[a_RefundBy].[RefundByInvoiceId] as [RefundByInvoiceId_2],
	[a_PendingState].[Id] as [Id_4],
	[a_Invoice].[Id] as [Id_5],
	[a_Contract].[Id] as [Id_6],
	[a_AccessTariff].[Id] as [Id_7],
	[a_ServicePoint].[Id] as [Id_8],
	[a_ServicePoint].[TownId],
	[a_ServicePoint].[StreetTypeId],
	[a_Town].[Id] as [Id_9],
	[a_Town].[StateId],
	[a_State].[Id] as [Id_10],
	[a_State].[CountryId],
	[a_State].[AutonomousCommunityId],
	[a_Community].[Id] as [Id_11],
	[a_StreetType].[Id] as [Id_12],
	[f].[Id] as [Id_13],
	[a_PriceList].[Id] as [Id_14]
FROM
	[CustomInvoice] [f]
		INNER JOIN [Invoice] [a_Invoice] ON [f].[InvoiceId] = [a_Invoice].[Id]
		LEFT JOIN [Invoice] [a_Rectifying] ON [a_Invoice].[RectifyingInvoiceId] = [a_Rectifying].[Id]
		LEFT JOIN [Invoice] [a_RefundBy] ON [a_Invoice].[RefundByInvoiceId] = [a_RefundBy].[Id]
		LEFT JOIN [InvoicePendingState] [a_PendingState] ON [a_Invoice].[PendingStateId] = [a_PendingState].[Id]
		INNER JOIN [Contract] [a_Contract] ON [f].[ContractId] = [a_Contract].[Id]
		INNER JOIN [AccessTariff] [a_AccessTariff] ON [f].[AccessTariffId] = [a_AccessTariff].[Id]
		INNER JOIN [ServicePoint] [a_ServicePoint] ON [f].[ServicePointId] = [a_ServicePoint].[Id]
		LEFT JOIN [Town] [a_Town] ON [a_ServicePoint].[TownId] = [a_Town].[Id]
		LEFT JOIN [CountryState] [a_State] ON [a_Town].[StateId] = [a_State].[Id]
		LEFT JOIN [AutonomousCommunity] [a_Community] ON [a_State].[AutonomousCommunityId] = [a_Community].[Id]
		LEFT JOIN [StreetType] [a_StreetType] ON [a_ServicePoint].[StreetTypeId] = [a_StreetType].[Id]
		LEFT JOIN [PriceList] [a_PriceList] ON [f].[PriceListId] = [a_PriceList].[Id]
WHERE
	[f].[Id] = 1

