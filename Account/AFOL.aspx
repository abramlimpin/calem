<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AFOL.aspx.cs" Inherits="Account_AFOL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Affidavit of Loss
                        </h1>
                          <p>REPUBLIC OF THE PHILIPPINES] S.S.</p>
                            <p>__________________________</p>
                            <p>I, ______________ of legal age, Filipino citizen and a resident of ___________ with telephone number __________</p>
                            <p>and with office address at _________________________________________ and office number ____________ after being sworn in accordance with law do hereby depose
                    and say:</p>
                            <p>1. That I am requesting all CMTS carriers to block the GSM handset that was lost in my possession as
                    owner thereof/stolen from me by an un identified person/s with particulars as follows:</p>
                            <table>
                            <thead>
                                <td>Make / Model / Type</td>
                                <td>international Mobile Equipment Identification (IMEI)</td>
                            </thead>
                            <tbody>
                                <td>____________________________</td>
                                <td>____________________________</td>
                            </tbody>
                        </table>
                            <p>2. That I am also requesting _______________ to block the Subscriber Identity Module (SIM) card/cell
                    phone with number ________________ that was contained in the lost/stolen cell phone mentioned above;</p>
                            <p>3. That I hereby undertake to hold free from any responsibility or shall not hold NTC and the abovementioned
                    carriers liable for whatever claims, loss or damages and party may institute by reason of
                    NTC’s action to permanently block the aforementioned unit from usage;</p>
                            <p>4. That in support of this request and as proof of my ownership of said cell phone unit, I attached hereto
                    the following documents, after making the original available for comparison;
                                <ul>Any one of the following:
                                <li>Photocopy of Passport</li>
                                <li>Photocopy of driver’s license</li>
                                </ul>
                                <br />
                                <ul>Any two of the following:
                                    <li>Photocopy of company ID/school ID</li>
                                    <li>Photocopy of TIN/SSS/GSIS ID</li>
                                    <li>Photocopy of postal ID</li>
                                </ul>
                                <br />
                                <ul>Proof of Ownership
                                    <li>Receipt of Purchase</li>
                                    <li>Owner’s certificate</li>
                                    <li>Barcode/Sticker from the box</li>
                                </ul>
                                <br />
                                <ul>In the absence of any proof of ownership:
                                    <li>Police Report</li>
                                    <li>Others, please specify:</li>
                                </ul>
                            </p>
                            <p>Place of Incident: __________________</p>
                            <p>Date: ____________________</p>
                            <label><asp:CheckBox ID="cboNight" runat="server" /> Night Time</label>
                            <label><asp:CheckBox ID="cboDay" runat="server" /> Day Time</label>
                            <p>5. That I am executing this affidavit of ownership and loss with undertaking to attest to the veracity and
                    truthfulness of the foregoing declaration and to be used for whatever legal intent and purposes the same
                    may thus serve.</p>
                            <div class="col-lg-6">
                                <p>FURTHER AFFIANT SAYETH NONE.</p>
                            </div>
                            <div class="col-lg-6">
                                ______________________________
                                <br />
                                AFFIANT
                                <label>Signature over printed name</label>
                            </div>
                            <br /><br />
                            <div class="col-lg-6">
                                <p>SUBSCRIBED AND SWORN TO BEFORE ME on this day, ________________________, affiant
                    has exhibited to me his/her Community Tax Certificate No. ___________ issued on ______ at _____________.</p>
                            </div>
                            <div class="col-lg-6">
                                <p>ADMINISTERING OFFICER</p>
                            </div>
                    </div>
                </div>
                
            </div>
            <!-- /.container-fluid -->

        </div>
</asp:Content>

