(700523) SELECT 
	t700523.Id = t700522.Id
FROM [DctSetpointtype(700522)] as t700522 (spt)
		LEFT JOIN (
			[VWellTree(700525)] as t700525 (t2)
				INNER JOIN [DctOu(700527)] as t700527 (tp2) ON ({t700525.ShopId?}? = {t700527.Id})
				LEFT JOIN [UacUsersDatagroup(700530)] as t700530 (cudg) ON ({t700527.Id} = {t700530.DatagroupId} AND {t700530.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700535)] as t700535 (oudg) ON ({t700527.ParentId?}? = {t700535.DatagroupId} AND {t700535.UserId} = 150 AND {t700535.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700555)] as t700555 (d) ON ({t700525.WellId?}? = {t700555.WellId})
		)  ON ({t700555.SetpointtypeId} = {t700522.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700530.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700535.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
