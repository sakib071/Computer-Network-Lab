simple C193055_HHJN
{
    gates:
        input in;
        output out;
}
//
// Five instances (tower1, tower2, tower3, tower4, tower5) of C193055_HHJN connected both ways.
// They will pass messages to one another.
//
network C193055
{
    @display("bgb=613,290");
    submodules:
        tower1: C193055_HHJN {
            @display("p=386,221");
        }
        tower2: C193055_HHJN {
            @display("p=130,221");
        }
        tower3: C193055_HHJN {
            @display("p=130,93");
        }
        tower4: C193055_HHJN {
            @display("p=257,34");
        }
        tower5: C193055_HHJN {

            @display("p=386,93");
        }
    connections:
        tower1.out --> {  delay = 100ms; } --> tower2.in;
        //        tower1.in <-- {  delay = 100ms; } <-- tower2.out;
        tower2.out --> {  delay = 100ms; } --> tower3.in;
        //        tower2.in <-- {  delay = 100ms; } <-- tower3.out;
        tower3.out --> {  delay = 100ms; } --> tower4.in;
        //        tower3.in <-- {  delay = 100ms; } <-- tower4.out;
        tower4.out --> {  delay = 100ms; } --> tower5.in;
        //        tower4.in <-- {  delay = 100ms; } <-- tower5.out;
        tower5.out --> {  delay = 100ms; } --> tower1.in;
//        tower5.in <-- {  delay = 100ms; } <-- tower1.out;

}
