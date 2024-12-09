(700564) SELECT 
	t700564.Id = t700563.Id
FROM [DctSetpointtype(700563)] as t700563 (spt)
		LEFT JOIN (
			[VWellTree(700566)] as t700566 (t2)
				INNER JOIN [DctOu(700568)] as t700568 (tp2) ON ({t700566.ShopId?}? = {t700568.Id})
				LEFT JOIN [UacUsersDatagroup(700571)] as t700571 (cudg) ON ({t700568.Id} = {t700571.DatagroupId} AND {t700571.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700576)] as t700576 (oudg) ON ({t700568.ParentId?}? = {t700576.DatagroupId} AND {t700576.UserId} = 150 AND {t700576.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700596)] as t700596 (d) ON ({t700566.WellId?}? = {t700596.WellId})
		)  ON ({t700596.SetpointtypeId} = {t700563.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700571.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700576.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
