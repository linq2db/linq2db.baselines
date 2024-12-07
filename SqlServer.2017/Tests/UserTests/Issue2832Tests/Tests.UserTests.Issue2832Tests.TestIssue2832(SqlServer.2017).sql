(243898) SELECT 
	t243898.Id = t243897.Id
FROM [DctSetpointtype(243897)] as t243897 (spt)
		LEFT JOIN (
			[VWellTree(243900)] as t243900 (t2)
				INNER JOIN [DctOu(243902)] as t243902 (tp2) ON ({t243900.ShopId?}? = {t243902.Id})
				LEFT JOIN [UacUsersDatagroup(243905)] as t243905 (cudg) ON ({t243902.Id} = {t243905.DatagroupId} AND {t243905.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243910)] as t243910 (oudg) ON ({t243902.ParentId?}? = {t243910.DatagroupId} AND {t243910.UserId} = 150 AND {t243910.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243930)] as t243930 (d) ON ({t243900.WellId?}? = {t243930.WellId})
		)  ON ({t243930.SetpointtypeId} = {t243897.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243905.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243910.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
