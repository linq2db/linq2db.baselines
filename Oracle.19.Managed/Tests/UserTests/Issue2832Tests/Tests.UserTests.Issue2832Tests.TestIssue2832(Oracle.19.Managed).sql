(140097) SELECT 
	t140097.Id = t140096.Id
FROM [DctSetpointtype(140096)] as t140096 (spt)
		LEFT JOIN (
			[VWellTree(140099)] as t140099 (t2)
				INNER JOIN [DctOu(140101)] as t140101 (tp2) ON ({t140099.ShopId?}? = {t140101.Id})
				LEFT JOIN [UacUsersDatagroup(140104)] as t140104 (cudg) ON ({t140101.Id} = {t140104.DatagroupId} AND {t140104.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140109)] as t140109 (oudg) ON ({t140101.ParentId?}? = {t140109.DatagroupId} AND {t140109.UserId} = 150 AND {t140109.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140129)] as t140129 (d) ON ({t140099.WellId?}? = {t140129.WellId})
		)  ON ({t140129.SetpointtypeId} = {t140096.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140104.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140109.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
