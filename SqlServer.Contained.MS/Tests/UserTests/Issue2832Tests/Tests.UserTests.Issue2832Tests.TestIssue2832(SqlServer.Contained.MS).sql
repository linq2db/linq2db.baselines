(488433) SELECT 
	t488433.Id = t488432.Id
FROM [DctSetpointtype(488432)] as t488432 (spt)
		LEFT JOIN (
			[VWellTree(488435)] as t488435 (t2)
				INNER JOIN [DctOu(488437)] as t488437 (tp2) ON ({t488435.ShopId?}? = {t488437.Id})
				LEFT JOIN [UacUsersDatagroup(488440)] as t488440 (cudg) ON ({t488437.Id} = {t488440.DatagroupId} AND {t488440.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(488445)] as t488445 (oudg) ON ({t488437.ParentId?}? = {t488445.DatagroupId} AND {t488445.UserId} = 150 AND {t488445.Inheritablepermission} > 0)
				INNER JOIN [Deviation(488465)] as t488465 (d) ON ({t488435.WellId?}? = {t488465.WellId})
		)  ON ({t488465.SetpointtypeId} = {t488432.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t488440.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t488445.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
