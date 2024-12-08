(155867) SELECT 
	t155867.Id = t155866.Id
FROM [DctSetpointtype(155866)] as t155866 (spt)
		LEFT JOIN (
			[VWellTree(155869)] as t155869 (t2)
				INNER JOIN [DctOu(155871)] as t155871 (tp2) ON ({t155869.ShopId?}? = {t155871.Id})
				LEFT JOIN [UacUsersDatagroup(155874)] as t155874 (cudg) ON ({t155871.Id} = {t155874.DatagroupId} AND {t155874.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(155879)] as t155879 (oudg) ON ({t155871.ParentId?}? = {t155879.DatagroupId} AND {t155879.UserId} = 150 AND {t155879.Inheritablepermission} > 0)
				INNER JOIN [Deviation(155899)] as t155899 (d) ON ({t155869.WellId?}? = {t155899.WellId})
		)  ON ({t155899.SetpointtypeId} = {t155866.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t155874.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t155879.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
