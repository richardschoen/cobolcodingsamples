             /* Call CBLSAMP01L with Parameters  */
             DCL        VAR(&PARM1) TYPE(*CHAR) LEN(5) VALUE(AAAAA)
             DCL        VAR(&PARM2) TYPE(*CHAR) LEN(50) VALUE(BBBBB)

             /* Call the COBOL with parms */
             CALL       PGM(CBLSAMP01L) PARM(&PARM1 &PARM2)

             /* Output parameters */
             SNDPGMMSG  MSGID(CPF9898) MSGF(QCPFMSG) MSGDTA('In Parm:' |> &PARM1) 
             SNDPGMMSG  MSGID(CPF9898) MSGF(QCPFMSG) MSGDTA('Out Parm:' |> &PARM2) 

