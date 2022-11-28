FROM ghcr.io/australian-imaging-service/mirc-ctp:sha-c91278d

COPY config.xml /JavaPrograms/CTP
COPY dicom-anonymizer-sender.script /JavaPrograms/CTP/scripts
RUN mkdir -p /mnt/DICOM
COPY MRBRAIN.DCM /mnt/DICOM
COPY entrypoint.sh /
RUN chmod +X /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
