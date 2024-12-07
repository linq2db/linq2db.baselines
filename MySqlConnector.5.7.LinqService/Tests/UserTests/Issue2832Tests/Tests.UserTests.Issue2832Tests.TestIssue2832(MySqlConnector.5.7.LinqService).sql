(318466) SELECT 
	t318466.Id = t318465.Id
FROM [DctSetpointtype(318465)] as t318465 (spt)
		LEFT JOIN (
			[VWellTree(318468)] as t318468 (t2)
				INNER JOIN [DctOu(318470)] as t318470 (tp2) ON ({t318468.ShopId?}? = {t318470.Id})
				LEFT JOIN [UacUsersDatagroup(318473)] as t318473 (cudg) ON ({t318470.Id} = {t318473.DatagroupId} AND {t318473.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318478)] as t318478 (oudg) ON ({t318470.ParentId?}? = {t318478.DatagroupId} AND {t318478.UserId} = 150 AND {t318478.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318498)] as t318498 (d) ON ({t318468.WellId?}? = {t318498.WellId})
		)  ON ({t318498.SetpointtypeId} = {t318465.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318473.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318478.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
