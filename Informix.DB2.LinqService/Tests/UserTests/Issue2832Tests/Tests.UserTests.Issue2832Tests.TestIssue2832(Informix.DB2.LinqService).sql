(155139) SELECT 
	t155139.Id = t155138.Id
FROM [DctSetpointtype(155138)] as t155138 (spt)
		LEFT JOIN (
			[VWellTree(155141)] as t155141 (t2)
				INNER JOIN [DctOu(155143)] as t155143 (tp2) ON ({t155141.ShopId?}? = {t155143.Id})
				LEFT JOIN [UacUsersDatagroup(155146)] as t155146 (cudg) ON ({t155143.Id} = {t155146.DatagroupId} AND {t155146.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155151)] as t155151 (oudg) ON ({t155143.ParentId?}? = {t155151.DatagroupId} AND {t155151.UserId} = 150 AND {t155151.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155171)] as t155171 (d) ON ({t155141.WellId?}? = {t155171.WellId})
		)  ON ({t155171.SetpointtypeId} = {t155138.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155146.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155151.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
