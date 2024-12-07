(94965) SELECT 
	t94965.Id = t94964.Id
FROM [DctSetpointtype(94964)] as t94964 (spt)
		LEFT JOIN (
			[VWellTree(94967)] as t94967 (t2)
				INNER JOIN [DctOu(94969)] as t94969 (tp2) ON ({t94967.ShopId?}? = {t94969.Id})
				LEFT JOIN [UacUsersDatagroup(94972)] as t94972 (cudg) ON ({t94969.Id} = {t94972.DatagroupId} AND {t94972.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(94977)] as t94977 (oudg) ON ({t94969.ParentId?}? = {t94977.DatagroupId} AND {t94977.UserId} = 150 AND {t94977.Inheritablepermission} > 0)
				INNER JOIN [Deviation(94997)] as t94997 (d) ON ({t94967.WellId?}? = {t94997.WellId})
		)  ON ({t94997.SetpointtypeId} = {t94964.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t94972.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t94977.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
