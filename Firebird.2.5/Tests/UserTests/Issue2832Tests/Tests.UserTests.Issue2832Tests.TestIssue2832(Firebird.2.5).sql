(160383) SELECT 
	t160383.Id = t160382.Id
FROM [DctSetpointtype(160382)] as t160382 (spt)
		LEFT JOIN (
			[VWellTree(160385)] as t160385 (t2)
				INNER JOIN [DctOu(160387)] as t160387 (tp2) ON ({t160385.ShopId?}? = {t160387.Id})
				LEFT JOIN [UacUsersDatagroup(160390)] as t160390 (cudg) ON ({t160387.Id} = {t160390.DatagroupId} AND {t160390.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(160395)] as t160395 (oudg) ON ({t160387.ParentId?}? = {t160395.DatagroupId} AND {t160395.UserId} = 150 AND {t160395.Inheritablepermission} > 0)
				INNER JOIN [Deviation(160415)] as t160415 (d) ON ({t160385.WellId?}? = {t160415.WellId})
		)  ON ({t160415.SetpointtypeId} = {t160382.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t160390.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t160395.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
