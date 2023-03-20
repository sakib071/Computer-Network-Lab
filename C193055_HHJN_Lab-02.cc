#include <string.h>
#include <omnetpp.h>

using namespace omnetpp;

class C193055_HHJN : public cSimpleModule
{
  protected:
    virtual void initialize() override;
    virtual void handleMessage(cMessage *msg) override;
};

Define_Module(C193055_HHJN);

void C193055_HHJN::initialize()
{
    if (strcmp("tower1", getName()) == 0) {
        cMessage *msg = new cMessage("C193055_HHJN_Message");
        send(msg, "out");
    }
}

void C193055_HHJN::handleMessage(cMessage *msg)
{
    send(msg, "out");
}
