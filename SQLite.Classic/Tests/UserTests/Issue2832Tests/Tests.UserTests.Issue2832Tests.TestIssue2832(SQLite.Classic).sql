(700876) SELECT 
	t700876.Id = t700875.Id
FROM [DctSetpointtype(700875)] as t700875 (spt)
		LEFT JOIN (
			[VWellTree(700878)] as t700878 (t2)
				INNER JOIN [DctOu(700880)] as t700880 (tp2) ON ({t700878.ShopId?}? = {t700880.Id})
				LEFT JOIN [UacUsersDatagroup(700883)] as t700883 (cudg) ON ({t700880.Id} = {t700883.DatagroupId} AND {t700883.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700888)] as t700888 (oudg) ON ({t700880.ParentId?}? = {t700888.DatagroupId} AND {t700888.UserId} = 150 AND {t700888.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700908)] as t700908 (d) ON ({t700878.WellId?}? = {t700908.WellId})
		)  ON ({t700908.SetpointtypeId} = {t700875.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700883.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700888.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
