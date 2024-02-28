BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1],
	[a_Child].[ChildID],
	[a_Child_1].[ChildID],
	[a_Child_2].[ChildID],
	[a_Child_3].[ChildID],
	[a_Child_4].[ChildID],
	[a_Child_5].[ChildID],
	[a_Child_6].[ChildID],
	[a_Child_7].[ChildID],
	[a_Child_8].[ChildID],
	[a_Child_9].[ChildID],
	[a_Child_10].[ChildID],
	[a_Child_11].[ChildID],
	[a_Child_12].[ChildID],
	[a_Child_13].[ChildID],
	[a_Child_14].[ChildID],
	[a_Child_15].[ChildID],
	[a_Child_16].[ChildID],
	[a_Child_17].[ChildID],
	[a_Child_18].[ChildID],
	[a_Child_19].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [GrandChild] [g1] ON ([p].[ParentID] = [g1].[ParentID])
		LEFT JOIN [Child] [a_Child] ON ([g1].[ParentID] = [a_Child].[ParentID] OR [g1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g1].[ChildID] = [a_Child].[ChildID] OR [g1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g2] ON ([p].[ParentID] = [g2].[ParentID])
		LEFT JOIN [Child] [a_Child_1] ON ([g2].[ParentID] = [a_Child_1].[ParentID] OR [g2].[ParentID] IS NULL AND [a_Child_1].[ParentID] IS NULL) AND ([g2].[ChildID] = [a_Child_1].[ChildID] OR [g2].[ChildID] IS NULL AND [a_Child_1].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g3] ON ([p].[ParentID] = [g3].[ParentID])
		LEFT JOIN [Child] [a_Child_2] ON ([g3].[ParentID] = [a_Child_2].[ParentID] OR [g3].[ParentID] IS NULL AND [a_Child_2].[ParentID] IS NULL) AND ([g3].[ChildID] = [a_Child_2].[ChildID] OR [g3].[ChildID] IS NULL AND [a_Child_2].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g4] ON ([p].[ParentID] = [g4].[ParentID])
		LEFT JOIN [Child] [a_Child_3] ON ([g4].[ParentID] = [a_Child_3].[ParentID] OR [g4].[ParentID] IS NULL AND [a_Child_3].[ParentID] IS NULL) AND ([g4].[ChildID] = [a_Child_3].[ChildID] OR [g4].[ChildID] IS NULL AND [a_Child_3].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g5] ON ([p].[ParentID] = [g5].[ParentID])
		LEFT JOIN [Child] [a_Child_4] ON ([g5].[ParentID] = [a_Child_4].[ParentID] OR [g5].[ParentID] IS NULL AND [a_Child_4].[ParentID] IS NULL) AND ([g5].[ChildID] = [a_Child_4].[ChildID] OR [g5].[ChildID] IS NULL AND [a_Child_4].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g6] ON ([p].[ParentID] = [g6].[ParentID])
		LEFT JOIN [Child] [a_Child_5] ON ([g6].[ParentID] = [a_Child_5].[ParentID] OR [g6].[ParentID] IS NULL AND [a_Child_5].[ParentID] IS NULL) AND ([g6].[ChildID] = [a_Child_5].[ChildID] OR [g6].[ChildID] IS NULL AND [a_Child_5].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g7] ON ([p].[ParentID] = [g7].[ParentID])
		LEFT JOIN [Child] [a_Child_6] ON ([g7].[ParentID] = [a_Child_6].[ParentID] OR [g7].[ParentID] IS NULL AND [a_Child_6].[ParentID] IS NULL) AND ([g7].[ChildID] = [a_Child_6].[ChildID] OR [g7].[ChildID] IS NULL AND [a_Child_6].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g8] ON ([p].[ParentID] = [g8].[ParentID])
		LEFT JOIN [Child] [a_Child_7] ON ([g8].[ParentID] = [a_Child_7].[ParentID] OR [g8].[ParentID] IS NULL AND [a_Child_7].[ParentID] IS NULL) AND ([g8].[ChildID] = [a_Child_7].[ChildID] OR [g8].[ChildID] IS NULL AND [a_Child_7].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g9] ON ([p].[ParentID] = [g9].[ParentID])
		LEFT JOIN [Child] [a_Child_8] ON ([g9].[ParentID] = [a_Child_8].[ParentID] OR [g9].[ParentID] IS NULL AND [a_Child_8].[ParentID] IS NULL) AND ([g9].[ChildID] = [a_Child_8].[ChildID] OR [g9].[ChildID] IS NULL AND [a_Child_8].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g10] ON ([p].[ParentID] = [g10].[ParentID])
		LEFT JOIN [Child] [a_Child_9] ON ([g10].[ParentID] = [a_Child_9].[ParentID] OR [g10].[ParentID] IS NULL AND [a_Child_9].[ParentID] IS NULL) AND ([g10].[ChildID] = [a_Child_9].[ChildID] OR [g10].[ChildID] IS NULL AND [a_Child_9].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g11] ON ([p].[ParentID] = [g11].[ParentID])
		LEFT JOIN [Child] [a_Child_10] ON ([g11].[ParentID] = [a_Child_10].[ParentID] OR [g11].[ParentID] IS NULL AND [a_Child_10].[ParentID] IS NULL) AND ([g11].[ChildID] = [a_Child_10].[ChildID] OR [g11].[ChildID] IS NULL AND [a_Child_10].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g12] ON ([p].[ParentID] = [g12].[ParentID])
		LEFT JOIN [Child] [a_Child_11] ON ([g12].[ParentID] = [a_Child_11].[ParentID] OR [g12].[ParentID] IS NULL AND [a_Child_11].[ParentID] IS NULL) AND ([g12].[ChildID] = [a_Child_11].[ChildID] OR [g12].[ChildID] IS NULL AND [a_Child_11].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g13] ON ([p].[ParentID] = [g13].[ParentID])
		LEFT JOIN [Child] [a_Child_12] ON ([g13].[ParentID] = [a_Child_12].[ParentID] OR [g13].[ParentID] IS NULL AND [a_Child_12].[ParentID] IS NULL) AND ([g13].[ChildID] = [a_Child_12].[ChildID] OR [g13].[ChildID] IS NULL AND [a_Child_12].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g14] ON ([p].[ParentID] = [g14].[ParentID])
		LEFT JOIN [Child] [a_Child_13] ON ([g14].[ParentID] = [a_Child_13].[ParentID] OR [g14].[ParentID] IS NULL AND [a_Child_13].[ParentID] IS NULL) AND ([g14].[ChildID] = [a_Child_13].[ChildID] OR [g14].[ChildID] IS NULL AND [a_Child_13].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g15] ON ([p].[ParentID] = [g15].[ParentID])
		LEFT JOIN [Child] [a_Child_14] ON ([g15].[ParentID] = [a_Child_14].[ParentID] OR [g15].[ParentID] IS NULL AND [a_Child_14].[ParentID] IS NULL) AND ([g15].[ChildID] = [a_Child_14].[ChildID] OR [g15].[ChildID] IS NULL AND [a_Child_14].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g16] ON ([p].[ParentID] = [g16].[ParentID])
		LEFT JOIN [Child] [a_Child_15] ON ([g16].[ParentID] = [a_Child_15].[ParentID] OR [g16].[ParentID] IS NULL AND [a_Child_15].[ParentID] IS NULL) AND ([g16].[ChildID] = [a_Child_15].[ChildID] OR [g16].[ChildID] IS NULL AND [a_Child_15].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g17] ON ([p].[ParentID] = [g17].[ParentID])
		LEFT JOIN [Child] [a_Child_16] ON ([g17].[ParentID] = [a_Child_16].[ParentID] OR [g17].[ParentID] IS NULL AND [a_Child_16].[ParentID] IS NULL) AND ([g17].[ChildID] = [a_Child_16].[ChildID] OR [g17].[ChildID] IS NULL AND [a_Child_16].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g18] ON ([p].[ParentID] = [g18].[ParentID])
		LEFT JOIN [Child] [a_Child_17] ON ([g18].[ParentID] = [a_Child_17].[ParentID] OR [g18].[ParentID] IS NULL AND [a_Child_17].[ParentID] IS NULL) AND ([g18].[ChildID] = [a_Child_17].[ChildID] OR [g18].[ChildID] IS NULL AND [a_Child_17].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g19] ON ([p].[ParentID] = [g19].[ParentID])
		LEFT JOIN [Child] [a_Child_18] ON ([g19].[ParentID] = [a_Child_18].[ParentID] OR [g19].[ParentID] IS NULL AND [a_Child_18].[ParentID] IS NULL) AND ([g19].[ChildID] = [a_Child_18].[ChildID] OR [g19].[ChildID] IS NULL AND [a_Child_18].[ChildID] IS NULL)
		LEFT JOIN [GrandChild] [g20] ON ([p].[ParentID] = [g20].[ParentID])
		LEFT JOIN [Child] [a_Child_19] ON ([g20].[ParentID] = [a_Child_19].[ParentID] OR [g20].[ParentID] IS NULL AND [a_Child_19].[ParentID] IS NULL) AND ([g20].[ChildID] = [a_Child_19].[ChildID] OR [g20].[ChildID] IS NULL AND [a_Child_19].[ChildID] IS NULL)
WHERE
	([a_Child_19].[ChildID] = 20) AND
	([a_Child_18].[ChildID] = 19) AND
	([a_Child_17].[ChildID] = 18) AND
	([a_Child_16].[ChildID] = 17) AND
	([a_Child_15].[ChildID] = 16) AND
	([a_Child_14].[ChildID] = 15) AND
	([a_Child_13].[ChildID] = 14) AND
	([a_Child_12].[ChildID] = 13) AND
	([a_Child_11].[ChildID] = 12) AND
	([a_Child_10].[ChildID] = 11) AND
	([a_Child_9].[ChildID] = 10) AND
	([a_Child_8].[ChildID] = 9) AND
	([a_Child_7].[ChildID] = 8) AND
	([a_Child_6].[ChildID] = 7) AND
	([a_Child_5].[ChildID] = 6) AND
	([a_Child_4].[ChildID] = 5) AND
	([a_Child_3].[ChildID] = 4) AND
	([a_Child_2].[ChildID] = 3) AND
	([a_Child_1].[ChildID] = 2) AND
	([a_Child].[ChildID] = 1)
ORDER BY
	[a_Child].[ChildID],
	[a_Child_1].[ChildID],
	[a_Child_2].[ChildID],
	[a_Child_3].[ChildID],
	[a_Child_4].[ChildID],
	[a_Child_5].[ChildID],
	[a_Child_6].[ChildID],
	[a_Child_7].[ChildID],
	[a_Child_8].[ChildID],
	[a_Child_9].[ChildID],
	[a_Child_10].[ChildID],
	[a_Child_11].[ChildID],
	[a_Child_12].[ChildID],
	[a_Child_13].[ChildID],
	[a_Child_14].[ChildID],
	[a_Child_15].[ChildID],
	[a_Child_16].[ChildID],
	[a_Child_17].[ChildID],
	[a_Child_18].[ChildID],
	[a_Child_19].[ChildID]

