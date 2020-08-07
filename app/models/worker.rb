class Worker < ApplicationRecord
    has_one :beneficiary

    accepts_nested_attributes_for :beneficiary


    mount_uploader :avatar, AvatarUploader
    mount_uploader :proof_address, ProofAddressUploader
    mount_uploader :banorte_contract, BanorteContractUploader
    mount_uploader :imss_discharge_notice, ImssDischargeNoticeUploader
    mount_uploader :infonavit_retention_notice, InfonavitRetentionNoticeUploader
    mount_uploader :work_contract, WorkContractUploader
    mount_uploaders :identification, IdentificationUploader
    mount_uploader :imss_format, ImssFormatUploader

    def self.search(search)
        if search
            Worker.where("nombre_completo LIKE :query", query: "%#{sanitize_sql_like(search.capitalize())}%")
        else
            Worker.all
        end

    end
end