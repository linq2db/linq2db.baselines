(155882) SELECT 
	t155882.Id = t155881.Id
FROM [DctSetpointtype(155881)] as t155881 (spt)
		LEFT JOIN (
			[VWellTree(155884)] as t155884 (t2)
				INNER JOIN [DctOu(155886)] as t155886 (tp2) ON ({t155884.ShopId?}? = {t155886.Id})
				LEFT JOIN [UacUsersDatagroup(155889)] as t155889 (cudg) ON ({t155886.Id} = {t155889.DatagroupId} AND {t155889.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155894)] as t155894 (oudg) ON ({t155886.ParentId?}? = {t155894.DatagroupId} AND {t155894.UserId} = 150 AND {t155894.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155914)] as t155914 (d) ON ({t155884.WellId?}? = {t155914.WellId})
		)  ON ({t155914.SetpointtypeId} = {t155881.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155889.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155894.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
