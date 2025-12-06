-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[ip].[InvestorId],
	[b_1].[Units],
	SUM([ip].[NetPayment])
FROM
	[PaymentEvent] [p]
		INNER JOIN [InvestorPayment] [ip] ON [p].[Id] = [ip].[Id]
		INNER JOIN [InvestorPaymentDetail] [ipd] ON [ip].[InvestorId] = [ipd].[InvestorId]
		INNER JOIN [PaymentCalculation] [pc] ON [ipd].[CalculationId] = [pc].[Id] AND [p].[Id] = [pc].[EventId]
		INNER JOIN (
			SELECT
				SUM([b].[Units]) as [Units],
				[b].[InvestorId],
				[b].[SecurityClass]
			FROM
				[Transaction] [b]
			GROUP BY
				[b].[SecurityClass],
				[b].[InvestorId]
		) [b_1] ON [ip].[InvestorId] = [b_1].[InvestorId] AND [p].[SecurityClass] = [b_1].[SecurityClass]
GROUP BY
	[ip].[InvestorId],
	[b_1].[Units]

