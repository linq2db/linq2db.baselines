(307191) SELECT 
	t307191.Id = t307190.Id
FROM [DctSetpointtype(307190)] as t307190 (spt)
		LEFT JOIN (
			(307227) SELECT 
				t307227.SetpointtypeId = t307223.SetpointtypeId
			FROM [VWellTree(307193)] as t307193 (t2)
					INNER JOIN [DctOu(307195)] as t307195 (tp2) ON ({t307193.ShopId?}? = {t307195.Id})
					LEFT JOIN [UacUsersDatagroup(307198)] as t307198 (cudg) ON ({t307195.Id} = {t307198.DatagroupId} AND {t307198.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307203)] as t307203 (oudg) ON ({t307195.ParentId?}? = {t307203.DatagroupId} AND {t307203.UserId} = 150 AND {t307203.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307223)] as t307223 (d) ON ({t307193.WellId?}? = {t307223.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307198.Permission, t307203.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307227 (t2_1) ON ({t307227.SetpointtypeId?} = {t307190.Id})
