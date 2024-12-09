(155885) SELECT 
	t155885.Id = t155884.Id
FROM [DctSetpointtype(155884)] as t155884 (spt)
		LEFT JOIN (
			[VWellTree(155887)] as t155887 (t2)
				INNER JOIN [DctOu(155889)] as t155889 (tp2) ON ({t155887.ShopId?}? = {t155889.Id})
				LEFT JOIN [UacUsersDatagroup(155892)] as t155892 (cudg) ON ({t155889.Id} = {t155892.DatagroupId} AND {t155892.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155897)] as t155897 (oudg) ON ({t155889.ParentId?}? = {t155897.DatagroupId} AND {t155897.UserId} = 150 AND {t155897.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155917)] as t155917 (d) ON ({t155887.WellId?}? = {t155917.WellId})
		)  ON ({t155917.SetpointtypeId} = {t155884.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155892.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155897.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
