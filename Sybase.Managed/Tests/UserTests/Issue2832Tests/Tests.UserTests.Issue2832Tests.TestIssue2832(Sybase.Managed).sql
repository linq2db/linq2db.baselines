(157097) SELECT 
	t157097.Id = t157096.Id
FROM [DctSetpointtype(157096)] as t157096 (spt)
		LEFT JOIN (
			[VWellTree(157099)] as t157099 (t2)
				INNER JOIN [DctOu(157101)] as t157101 (tp2) ON ({t157099.ShopId?}? = {t157101.Id})
				LEFT JOIN [UacUsersDatagroup(157104)] as t157104 (cudg) ON ({t157101.Id} = {t157104.DatagroupId} AND {t157104.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(157109)] as t157109 (oudg) ON ({t157101.ParentId?}? = {t157109.DatagroupId} AND {t157109.UserId} = 150 AND {t157109.Inheritablepermission} > 0)
				INNER JOIN [Deviation(157129)] as t157129 (d) ON ({t157099.WellId?}? = {t157129.WellId})
		)  ON ({t157129.SetpointtypeId} = {t157096.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t157104.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t157109.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
